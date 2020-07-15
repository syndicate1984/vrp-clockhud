fx_version 'adamant'
games { 'gta5' }

dependency "vrp"

ui_page "ui/index.html"

files {
	"ui/index.html",
	"ui/assets/test.png",
	"ui/assets/mancatura.png",
	"ui/assets/bautura.png",
	"ui/assets/gold.png",
	"ui/assets/cash.png",
	"ui/assets/Vintange.tff",
	"ui/assets/logo.png",
	"ui/assets/pp.jpg",
	"ui/assets/veata.png",
	"ui/fonts/fonts/Circular-Bold.ttf",
	"ui/fonts/fonts/Circular-Bold.ttf",
	"ui/fonts/fonts/Circular-Regular.ttf",
	"ui/fonts/pricedown.ttf",
	"ui/script.js",
	"ui/style.css",
	"ui/ceas.js",
	"ui/ceas.css",
	"ui/debounce.min.js"
}


client_scripts{ 
  "lib/Tunnel.lua",
  "lib/Proxy.lua",
  "client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}