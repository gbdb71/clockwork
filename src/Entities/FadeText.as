package Entities 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	
	/**
	 * Text that fades in; used for showing the credits.
	 */
	public class FadeText extends Entity
	{
		private var count:int = 0;
		private var fadetime:int = 120;
		private var text:Text;
		
		public function FadeText(x:int, y:int, s:String, size:int) 
		{
			super(x, y);
			Text.size = size;
			graphic = text = new Text(s);
			text.alpha = 0;
			graphic.scrollX = graphic.scrollY = 0;
			
			this.x -= s.length * 2;
			if (size == 16) this.x -= s.length * 2;
		}
		
		override public function update():void
		{
			if (count > 120) return;
			count++;
			text.alpha = count / fadetime;
		}
		
	}

}