function bestGray=BestGray(Im)

    vector = size(Im);
    row = vector(1);
    col = vector(2);
    totalBright = 0;
    totalSqB = 0;
    totalPixels = row*col;
    bestContrast = 0;

    % separate the R G B channels
    R=Im(:,:,1);
    G=Im(:,:,2);
    B=Im(:,:,3);

    for r=0:0.1:1
        for g=0:0.1:1-r
            b=1-(r+g);

            totalBright = 0;
            totalSqB = 0;

            % apply the weights
            newR = [R*r];
            newG = [G*g]; 
            newB = [B*b];

            % apply new values to new layers and create new image
            ImG=newR + newG + newB;

            % iterate through pixels
            for j = 1:col
                for i = 1:row

                    % add brightness values        
                    cell = ImG(i,j);
                    totalBright = double(totalBright) + double(cell);

                end
            end

            % divide by number of pixels = average brightness
            avBright = totalBright/totalPixels;

            % iterate through pixels
            for j = 1:col
                for i = 1:row

                    % difference between brightness and average brightness
                    cell = ImG(i,j);
                    difBCell = double(cell)-double(avBright);

                    % square the result
                    sqBCell = difBCell^2;

                    % add values for all pixels
                    totalSqB = double(totalSqB) + sqBCell;

                end
            end

            % reciprocal
            recip = 1/totalPixels;

            % total and square root
            avTotal = recip * totalSqB;
            squareRoot = sqrt(avTotal);

            disp(squareRoot);

            if squareRoot > bestContrast
                bestContrast = squareRoot;
                bestR = r;
                bestG = g;
                bestB = b;
            end

        end
    end
    
    % apply the best weights
    newR = [R*bestR];
    newG = [G*bestG]; 
    newB = [B*bestB];

    % apply new values to new layers and create new image
    ImG=newR + newG + newB;
    
    bestGray=ImG;
end