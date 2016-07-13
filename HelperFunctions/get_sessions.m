function sessions = get_sessions(name, delay)
%sessions = get_sessions(name, delay)
%   Outputs array of structs, where each struct contains information for
%   one experimental session of the paired stim study. Use inputs to select
%   sessions for each monkey or with a given delay btw stim sites
% 
%   name is either 'GT' or 'Jalapeno'  
%   delay is given in ms,
%       valid delays are 0,10,30,70,100, and [], 0 corresponds to
%       single-site stim sessions and an empty vector grabs sessions with
%       all delays

% if delay is empty vector, then output all sessions
if isempty(delay),
    delay = 0;
    all = 1;
else
    all = 0;
end

% GT
days(1).name        = 'GT';
days(1).date        = '20150908';
days(1).sessions    = [2,3,4];
days(1).arrays      = {{'M1'},{'M1'},{'M1'}};
days(1).delays      = [10,10,10];
days(1).orientation = {'no photo','perp','par'};

days(2).name        = 'GT';
days(2).date        = '20150909';
days(2).sessions    = [2,3,4,5];
days(2).arrays      = {{'M1'},{'M1'},{'M1'},{'M1'}};
days(2).delays      = [10,10,10,70];
days(2).orientation = {'par','par','par','par'};

days(3).name        = 'GT';
days(3).date        = '20150910';
days(3).sessions    = [3,4,6,7];
days(3).arrays      = {{'S1'},{'S1'},{'S1'},{'S1'}};
days(3).delays      = [70,70,10,10];
days(3).orientation = {'par','par','par','perp'};

days(4).name        = 'GT';
days(4).date        = '20150911';
days(4).sessions    = [3,4,6,7];
days(4).arrays      = {{'S1'},{'S1'},{'S1'},{'S1'}};
days(4).delays      = [0,0,30,30];
days(4).orientation = {'single','single','perp','par'};

days(5).name        = 'GT';
days(5).date        = '20150914';
days(5).sessions    = [1,2,3];
days(5).arrays      = {{'S1'},{'S1'},{'S1'}};
days(5).delays      = [10,100,100];
days(5).orientation = {'par','par','par'};

days(6).name        = 'GT';
days(6).date        = '20150915';
days(6).sessions    = [2,3,4,5];
days(6).arrays      = {{'S1'},{'S1'},{'S1'},{'S1'}};
days(6).delays      = [30,10,30,10];
days(6).orientation = {'both','par','par','par'};

days(7).name        = 'GT';
days(7).date        = '20150916';
days(7).sessions    = [4];
days(7).arrays      = {{'S1'}};
days(7).delays      = [10];
days(7).orientation = {'par (close)'};

days(8).name        = 'GT';
days(8).date        = '20150917';
days(8).sessions    = [1,2,3];
days(8).arrays      = {{'S1','M1'},{'S1','M1'},{'S1','M1'}};
days(8).delays      = [10,10,100];
days(8).orientation = {'par','par (close)','both'};

days(9).name        = 'GT';
days(9).date        = '20150918';
days(9).sessions    = [1];
days(9).arrays      = {{'S1','M1'}};
days(9).delays      = [100];
days(9).orientation = {'perp'};

days(10).name        = 'GT';
days(10).date        = '20150921';
days(10).sessions    = [3,5];
days(10).arrays      = {{'S1'},{'S1'}};
days(10).delays      = [10,10];
days(10).orientation = {'across','across'};

days(11).name        = 'GT';
days(11).date        = '20150922';
days(11).sessions    = [1,2,3];
days(11).arrays      = {{'S1'},{'S1'},{'S1'}};
days(11).delays      = [10,10,100];
days(11).orientation = {'across','across','across'};

days(12).name        = 'GT';
days(12).date        = '20150925';
days(12).sessions    = [1,2];
days(12).arrays      = {{'S1'},{'S1'}};
days(12).delays      = [10,10];
days(12).orientation = {'par','both (close)'};

% Jalapeno
days(13).name        = 'Jalapeno';
days(13).date        = '20160425';
days(13).sessions    = [1,2,3];
days(13).arrays      = {{'M1'},{'M1'},{'S1'}};
days(13).delays      = [0,0,0];
days(13).orientation = {'single','single','single'};

days(14).name        = 'Jalapeno';
days(14).date        = '20160426';
days(14).sessions    = [1,2,3];
days(14).arrays      = {{'S1'},{'S1'},{'S1'}};
days(14).delays      = [30,10,10];
days(14).orientation = {'par','par','par'};

days(15).name        = 'Jalapeno';
days(15).date        = '20160427';
days(15).sessions    = [2];
days(15).arrays      = {{'S1'}};
days(15).delays      = [0];
days(15).orientation = {'single'};

days(16).name        = 'Jalapeno';
days(16).date        = '20160428';
days(16).sessions    = [2,3];
days(16).arrays      = {{'S1'},{'S1'}};
days(16).delays      = [100,10];
days(16).orientation = {'perp','par'};

days(17).name        = 'Jalapeno';
days(17).date        = '20160429';
days(17).sessions    = [1,3];
days(17).arrays      = {{'S1'},{'S1'}};
days(17).delays      = [10,100];
days(17).orientation = {'par','perp'};

days(18).name        = 'Jalapeno';
days(18).date        = '20160502';
days(18).sessions    = [1];
days(18).arrays      = {{'S1'},{'S1'},{'S1'}};
days(18).delays      = [10];
days(18).orientation = {'perp (across?)'};

days(19).name        = 'Jalapeno';
days(19).date        = '20160624';
days(19).sessions    = [1,2,3,4];
days(19).arrays      = {{'S1'},{'S1'},{'S1'},{'S1'}};
days(19).delays      = [0,-1,10,100];
days(19).orientation = {'single','across','across','across'};

days(20).name        = 'Jalapeno';
days(20).date        = '20160625';
days(20).sessions    = [2,3,4,5];
days(20).arrays      = {{'S1'},{'S1'},{'S1'},{'S1'}};
days(20).delays      = [-1,0,10,10];
days(20).orientation = {'perp','single','par','across'};

days(21).name        = 'Jalapeno';
days(21).date        = '20160626';
days(21).sessions    = [1,2,3];
days(21).arrays      = {{'S1'},{'S1'},{'S1'}};
days(21).delays      = [0,0,0];
days(21).orientation = {'single','single','single'};

days(22).name        = 'Jalapeno';
days(22).date        = '20160627';
days(22).sessions    = [1,2];
days(22).arrays      = {{'S1'},{'S1'}};
days(22).delays      = [10,100];
days(22).orientation = {'across','across'};

days(23).name        = 'Jalapeno';
days(23).date        = '20160630';
days(23).sessions    = [1,3];
days(23).arrays      = {{'S1'},{'S1'}};
days(23).delays      = [100,10];
days(23).orientation = {'across','both'};

days(24).name        = 'Jalapeno';
days(24).date        = '20160702';
days(24).sessions    = [2,4];
days(24).arrays      = {{'S1'},{'S1'}};
days(24).delays      = [10,100];
days(24).orientation = {'across','across'};


% only give sessions for correct monkey
if strcmp(name,'GT'), days = days(1:12);
elseif strcmp(name,'Jalapeno'), days = days(13:end);
else error('Invalid Name');
end

% only give sessions corresponding to delay, 
sessions = [];
for d=1:length(days),
    for b=1:length(days(d).sessions),
        if days(d).delays(b)==delay || all,
            sessions(end+1).name = days(d).name;
            sessions(end).date = days(d).date;
            sessions(end).session = days(d).sessions(b);
            sessions(end).arrays = days(d).arrays{b};
            sessions(end).delay = days(d).delays(b);
            sessions(end).orientation = days(d).orientation{b};
        end
    end
end


