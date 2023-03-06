// Combinaisons
// Roni Kaufman, August 2021

const MAX_TILES = 6;
const palettes = [
	["#f5dc23", "#ed225d", "#1c1c1c"],
	["#fe01ec", "#8a07da", "#102340"],
	["#0d40bf", "#f4e361", "#f24679"],
	["#ffffff", "#000000", "#ffe819"],
	["#021d34", "#228fca", "#dcedf0"],
	["#3cd86b", "#ebf7cd", "#0d150b"]
];

/** OPC START **/
OPC.slider('seed', Math.floor(Math.random()*1000), 0, 1000, 1);
OPC.slider('grid_size', 8, 4, 12, 1);
OPC.slider('diverseness', 3, 1, MAX_TILES, 1);
OPC.slider('palette', 0, 0, palettes.length-1, 1);
OPC.slider('flip_colors', 0, 0, 1, 1);
OPC.slider('line_only', 0, 0, 1, 1);
OPC.slider('line_thickness', 0.5, 0, 1, 0.25);
/** OPC END**/

let colors;
let tile;
let possibilities;

function setup() {
	createCanvas(windowWidth, windowHeight);
	pixelDensity(2);
	imageMode(CENTER);
}

function draw() {
	randomSeed(seed);
	
	colors = palettes[palette];
	if (flip_colors == 1) {
		colors = [colors[1], colors[0], colors[2]];
	}
	if (line_only == 1) {
		colors = [colors[0], colors[0], colors[2]];
		if (line_thickness == 0) {
			colors = [colors[0], colors[2], colors[2]];
		}
	}
	
	possibilities = [];
	for (let k = 0; k < MAX_TILES; k++) {
		possibilities.push(k);
	}
	for (let k = diverseness; k < MAX_TILES; k++) {
		possibilities.splice(floor(random(possibilities.length)), 1);
	}
	
	let realSize = floor(min(windowWidth, windowHeight)*0.8);
	let xCorner = width/2-realSize/2;
	let yCorner = height/2-realSize/2;
	let s = floor(realSize/grid_size);
	let sw = map(line_thickness, 0, 1, 0, s/15);
	
	translate(xCorner + (realSize-grid_size*s)/2, yCorner + (realSize-grid_size*s)/2);
	
	background(colors[0]);
	
	fill(colors[1]);
	strokeWeight(sw);
	stroke(colors[2]);
	for (let i = 0; i < grid_size; i++) {
		circle(i*s+3*s/10, 0, s/5);
		circle(i*s+3*s/10, grid_size*s, s/5);
		circle(i*s+7*s/10, 0, s/5);
		circle(i*s+7*s/10, grid_size*s, s/5);
		circle(0, i*s+3*s/10, s/5);
		circle(grid_size*s, i*s+3*s/10, s/5);
		circle(0, i*s+7*s/10, s/5);
		circle(grid_size*s, i*s+7*s/10, s/5);
	}
	
	tile = createGraphics(s, s);
	for (let i = 0; i < grid_size; i++) {
		for (let j = 0; j < grid_size; j++) {
			makeTile(i*s, j*s, s, sw);
		}
	}
}

function makeTile(x, y, s, sw) {
	push();
	translate(x+s/2, y+s/2);
	rotate(random([0, PI/2, PI, 3*PI/2]));
	
	let r = random(possibilities);
	tile.stroke(colors[2]);
	tile.strokeWeight(sw);
	let u = s/5;
	switch (r) {
		case 0:
			tile.background(colors[0]);
			tile.fill(colors[1]);
			tile.circle(0, 0, 4*u);
			tile.circle(s, 0, 4*u);
			tile.circle(0, s, 4*u);
			tile.circle(s, s, 4*u);
			tile.circle(s/2, s/2, 2*u);
			tile.fill(colors[0]);
			tile.circle(0, 0, 2*u);
			tile.circle(s, 0, 2*u);
			tile.circle(0, s, 2*u);
			tile.circle(s, s, 2*u);
			break;
		case 1:
			tile.background(colors[1]);
			tile.fill(colors[0]);
			tile.circle(0, 0, 6*u);
			tile.circle(s, 0, 2*u);
			tile.circle(0, s, 2*u);
			tile.circle(s, s, 6*u);
			tile.fill(colors[1]);
			tile.circle(s, s, 4*u);
			tile.circle(0, 0, 4*u);
			tile.fill(colors[0]);
			tile.circle(0, 0, 2*u);
			tile.circle(s, s, 2*u);
			break;
		case 2:
			tile.background(colors[0]);
			tile.fill(colors[1]);
			tile.circle(0, 0, 8*u);
			tile.circle(s, 3/2*u, u);
			tile.circle(3/2*u, s, u);
			tile.fill(colors[0]);
			tile.circle(0, 0, 6*u);
			tile.fill(colors[1]);
			tile.circle(0, 0, 4*u);
			tile.circle(s, s, 4*u);
			tile.fill(colors[0]);
			tile.circle(0, 0, 2*u);
			tile.circle(s, s, 2*u);
			break;
		case 3:
			tile.background(colors[0]);
			tile.fill(colors[1]);
			tile.circle(s/2, 0, 3*u);
			tile.circle(s, s/2, 3*u);
			tile.circle(s/2, s, 3*u);
			tile.circle(0, s/2, 3*u);
			tile.fill(colors[0]);
			tile.circle(s/2, 0, u);
			tile.circle(s, s/2, u);
			tile.circle(s/2, s, u);
			tile.circle(0, s/2, u);
			break;
		case 4:
			tile.background(colors[1]);
			tile.fill(colors[0]);
			tile.circle(0, 0, 2*u);
			tile.circle(s/2, 0, u);
			tile.circle(s, 0, 2*u);
			tile.circle(0, s, 2*u);
			tile.circle(s/2, s, u);
			tile.circle(s, s, 2*u);
			tile.rect(-sw, 2*u, s+2*sw, u);
			break;
		case 5:
			tile.background(colors[0]);
			tile.fill(colors[1]);
			tile.circle(0, 0, 4*u);
			tile.circle(0, s, 4*u);
			tile.circle(s, s, 4*u);
			tile.circle(7/2*u, 0, u);
			tile.circle(s, 3/2*u, u);
			tile.circle(s/2, s/2, 2*u);
			tile.fill(colors[0]);
			tile.circle(0, 0, 2*u);
			tile.circle(0, s, 2*u);
			tile.circle(s, s, 2*u);
			break;
	}
	image(tile, 0, 0);
	
	pop();
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}