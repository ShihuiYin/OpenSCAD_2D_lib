// Draw a line between (x1, y1) and (x2, y2)
module line(x1, y1, x2, y2, line_width=10){
    length = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
    delta_x = 1/2*line_width*(y2-y1)/length;
    delta_y = 1/2*line_width*(x2-x1)/length;
    polygon([[x1-delta_x,y1+delta_y],[x2-delta_x, y2+delta_y],[x2+delta_x,y2-delta_y],[x1+delta_x,y1-delta_y]]);
}

module arrow(x1, y1, x2, y2, arrow_size=20, line_width=10){
    length = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
    x2_i = x2 - arrow_size/2*sqrt(3)/length*(x2-x1);
    y2_i = y2 - arrow_size/2*sqrt(3)/length*(y2-y1);
    delta_x = 1/2*line_width*(y2-y1)/length;
    delta_y = 1/2*line_width*(x2-x1)/length;
    polygon([[x1-delta_x,y1+delta_y],[x2_i-delta_x,y2_i+delta_y],[x2_i-delta_x/line_width*arrow_size,y2_i+delta_y/line_width*arrow_size],[x2,y2],[x2_i+delta_x/line_width*arrow_size,y2_i-delta_y/line_width*arrow_size],[x2_i+delta_x,y2_i-delta_y],[x1+delta_x,y1-delta_y]]);
}

