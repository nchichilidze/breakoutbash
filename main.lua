-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
------------------
local physics = require("physics"); 
physics.start();
physics.setGravity(0,0); 

local W = display.contentWidth/2 
local H = display.contentHeight/2

local brick;
local brickWidth; 
local brickHeight;

local score = 0; 
local currentLevel = 0; 

local velocityX = 3; 
local VelocityY = -3; 

local gameEvent = ""; 

-- Menu screen 
local titleScreenGroup; 
local titleScreen; 
local playButton; 

-- Game Screen 
local background; 
local brick; 
local ball; 
local paddle; 

function main() 
	showTitleScreen(); 
end 

function showTitleScreen() 
	titleScreenGroup = display.newGroup()

	background = display.newImageRect("backgr.jpg",360,570); 
	background.x = display.contentCenterX 
	background.y = display.contentCenterY 

	playButton = display.newImageRect("play.jpg",150,70); 
	playButton.x = display.contentCenterX; 
	playButton.y = display.contentCenterY; 
	playButton.name = "playButton"; 

	titleScreenGroup:insert(background); 
	titleScreenGroup:insert(playButton); 
	
	playButton:addEventListener("tap",loadGame); 
end 

function loadGame(event) 
	if event.target.name == "playButton" then 
		transition.to(titleScreenGroup,{time = 0, alpha = 0, onComplete = initializeGameScreem})
		playButton:removeEventListener("tap",loadGame); 
	end
end


function initializeGameScreem() 
	background = display.newImageRect("backgr.jpg",360,570);
	background.x = display.contentCenterX 
	background.y = display.contentCenterY 
	paddle = display.newImageRect("paddle.jpg",100,20); 
	paddle.x = display.contentCenterX; 
	paddle.y = display.contentCenterY + 230; 


end

main() 

























