import graph;
import settings;
import fontsize;
import geometry;

// Function to set common settings
void setSettings() {
    size(10cm);  // Set default size
    defaultpen(fontsize(12pt));  // Default font size// template.asy

import graph;
import settings;
import fontsize;
import geometry;

// Function to set common settings
void setSettings() {
    size(10cm);  // Set default size
    defaultpen(fontsize(12pt));  // Default font size
    outformat="img";  // Set output format to img
}

// Template function to create images
void createImage(string fileName, real function(real x), real xMin, real xMax) {
    setSettings();
    draw((xMin,0)--(xMax,0), Arrow);  // Draw x-axis
    draw(graph(function, xMin, xMax));  // Draw the function
    shipout(fileName);
}

// Example function
real f(real x) { return sin(x); }
createImage("sine_wave3", f, -pi, pi);

    settings.tex = "pdftex"; // Use pdftex for text rendering
}

// Template function to create images
void createImage(string fileName, real function(real x), real xMin, real xMax) {
    setSettings();
    settings.outformat = "img";  // Set output format to img
    draw((xMin,0)--(xMax,0), Arrow);  // Draw x-axis
    draw(graph(function, xMin, xMax));  // Draw the function
    shipout(fileName);
}

// Example function
real f(real x) { return sin(x); }
createImage("sine_wave3", f, -pi, pi);
