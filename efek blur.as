//blur fx
//
import flash.filters.BlurFilter;

var mclListener:Object=new Object();
mclListener.onLoadInit=function(target_mc:MovieClip){
    //tengah
    target_mc._x=(Stage.width-target_mc._width)/2;
    target_mc._y=(Stage.height-target_mc._height)/2;
};

//movie clip
this.createEmptyMovieClip("img_mc",10);
var img_mcl:MovieClipLoader=new MovieClipLoader();
img_mcl.addListener(mclListener);
img_mcl.loadClip("gambargw.jpg",img_mc);
var blur:BlurFilter=new BlurFilter(10,10,2);

//mouse
var mouseListener:Object=new Object();
mouseListener.onMouseMove=function():void{
    blur.blurX=Math.abs(xmouse-(Stage.width/2))/Stage.width*2*50;
    blur.blurY=Math.abs(xmouse-(Stage.height/2))/Stage.height*2*50;
    img_mc.filters=[blur];
};Mouse.addListener(mouseListener);