function ptb_warmup()
%--------------------------------------------------------------------------
% OPEN PTB SCREEN
%--------------------------------------------------------------------------
try    
    screen = max(Screen('Screens'));
    Screen('Preference', 'SkipSyncTests', 0);
    Screen('OpenWindow',screen); 
    sca;
    fprintf('\n---------------------\n---------------------\nPTB is doing fine.\nFor further information, check PTB output above.\nYou can go on with your experiment now.\n---------------------\n---------------------\n');
catch
    %----------------------------------------------------------------------
    % OPEN PTB SCREEN SECOND TIME IF ERROR WAS CATCHED
    %----------------------------------------------------------------------
    try
        Screen('Preference', 'SkipSyncTests', 0);
        Screen('OpenWindow',screen); 
        sca;
        fprintf('\n---------------------\n---------------------\nPTB is doing fine after 1 restart.\nFor further information, read text above.\nYou can go on with your experiment now.\n---------------------\n---------------------\n');
    catch
        fprintf('\n\n---------------------\n---------------------\nCaution!!!\nFailed to open PTB screen 2 times.\nPlease check PTB error message for further information.\n---------------------\n---------------------\n---------------------\n');
        rethrow(lasterror);
    end
end


end


