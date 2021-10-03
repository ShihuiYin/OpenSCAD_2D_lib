module line(x1, y1, x2, y2, line_width=10){
    length = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
    delta_x = 1/2*line_width*(y2-y1)/length;
    
    delta_y = 1/2*line_width*(x2-x1)/length;
    echo(delta_x);
    echo(delta_y);
    polygon([[x1-delta_x,y1+delta_y],[x2-delta_x, y2+delta_y],[x2+delta_x,y2-delta_y],[x1+delta_x,y1-delta_y]]);
}

