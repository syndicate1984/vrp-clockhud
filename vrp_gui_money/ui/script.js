$(document).ready(function(){

  window.addEventListener("message", function(event){
    if(event.data.survival == true){
      setProgress(event.data.hunger,'.progress-hunger');
      setProgress(event.data.thirst,'.progress-thirst');
      setProgress(event.data.viata,'.progress-veata');
    }
    if(event.data.pmoney){
      $(".pmoney").html("<span class='symbol'></span>"+event.data.pmoney);
    }
    if(event.data.aur){
      $(".aur").html("<span class='symbol'></span>"+event.data.aur);
    }
  });
});

function setProgress(percent, element){
  $(element).css("width",percent+"%");
}
