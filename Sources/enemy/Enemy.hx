package enemy;

import kha.Scene;
import kha.Sprite;
import kha.Image;

class Enemy extends Sprite {
	public function new(image : Image, width : Int, height : Int, z : Int) {
		super(image, width, height, z);
	}
	
	public function hitWithShot() : Void {
		Scene.the.removeEnemy(this);
		Scene.the.addProjectile(new Explosion(x + width / 2, y + width / 2));
	}
}