function MorseCodeInput
    global t_old tscale lastEvent

    t_old = now();
    tscale = 0.1;
    lastEvent = 0; % 0 = up, 1 = down

    mci = figure('KeyPressFcn',@Key_Down,'KeyReleaseFcn',@Key_Up);
    
    
    function Key_Down(src,event)
        if ( lastEvent == 1 )
            return;
        end

        lastEvent = 1;
        dt = ( now() - t_old ) * 86400;

        if ( dt < 3 * tscale )
            
        elseif ( dt < 6 * tscale )
            fprintf(' ');
        else
            fprintf('   ');
        end

        t_old = now();

        end

    function Key_Up(src,evnt)
        
      if ( lastEvent == 0 )
          return;
      end

      lastEvent = 0;
      dt = ( now() - t_old ) * 86400;

      if ( dt < 3 * tscale )
        fprintf('.');
      else
        fprintf('-');
      end
      
      t_old = now();
    end
end