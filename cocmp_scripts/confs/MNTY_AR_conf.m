function conf = MNTY_AR_conf
%%
% Call default configuration driver, then change only the settings that are
% necessary for the MNTY domain.

% Get a set of default config parameters - see HFRPdriver_default_conf for
% a list of parameters that will be set to default if not specified.
conf = HFRPdriver_default_conf;

% Program parameters
% Base directories.
baseDir = '/Users/cocmpmb/';
baseConfDir = fullfile(baseDir,'HFR_Progs','matlab','HFR_COCMP','data');
baseResultsDir ='/Volumes/Archives0/Data/';
baseRadialDir = '/Volumes/Archives0/Data/';

domain = 'MNTY';
% Reset all the parameters needed for the MNTY case

%% Config parameters for getting and processing Radials
% Where are the radials located up to the site name
conf.Radials.BaseDir = baseRadialDir;
conf.Radials.MonthFlag = true;
conf.Radials.TypeFlag = true;

% TimeChanges notes when a site was added or pattern type for a site was
% switched from ideal to measured or meas to ideal.  
% TimeChanges is currently set up just for time period from Jan 2006 thru 
% Dec 2007.
conf.Radials.TimeChanges = [
             2006    1     1    0    0    0  %1 Start
             2006    2     2   10    0    0  %2 SCRZ meas to ideal
             2006    2     3   19    0    0  %3 GCYN on (ideal)
             2006    3     3    9    0    0  %4 PPIN meas to ideal
             2006    3    16    0    0    0  %5 BIGC on (ideal)
             2006    4    14   22    0    0  %6 NPGS meas to ideal
             2006    6     6   22    0    0  %7 MONT on (ideal)
             2006    6     8   21    0    0  %8 PESC on (ideal)
             2006    7     7   22    0    0  %9 PPIN ideal to meas
             2006    7    17   13    0    0  %10 MONT ideal to meas
             2006    7    20   19    0    0  %11 NPGS ideal to meas
             2006    8    10   20    0    0  %12 MLNG meas to ideal
             2006   10    17   21    0    0  %13 MLNG ideal to meas
             2006   11     6   23    0    0  %14 MLNG meas to ideal
             2006   11    16    2    0    0  %15 Switch to MLML (ideal) & NPGS meas to ideal
             2006   11    27   20    0    0  %16 NPGS ideal to meas
             2006   12    18   21    0    0  %17 MLML ideal to meas
             2007    3    19   20    0    0  %18 SCRZ ideal to meas
             2007    5     9   20    0    0  %19 PSUR meas to ideal
             2007    5    17   23    0    0  %20 RAGG on (ideal)
             2007    8     4   19    0    0  %21 RAGG ideal to meas
             2007    8     6   16    0    0  %22 PSUR ideal to meas
             2007    9     9    8    0    0  %23 PSUR meas to ideal & MONT meas to ideal (close enough, SFOO sets it at 9/15)
             2007   11    16    0    0    0  %24 PSLR on (ideal)
                                           ];
conf.Radials.TimeChanges = datenum(conf.Radials.TimeChanges);

% Each of the Types corresponds to a TimeChanges element above.
conf.Radials.Sites =         {'MONT','PESC','BIGC','SCRZ','MLML','MLNG','NPGS','PPIN','GCYN','PSUR','PSLR','RAGG'};
conf.Radials.TypesList{1}  = {'RDLi','RDLi','RDLi','RDLm','RDLi','RDLm','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{2}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{3}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{4}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{5}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{6}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLi','RDLi','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{7}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLi','RDLi','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{8}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLi','RDLi','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{9}  = {'RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLi','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{10} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLm','RDLi','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{11} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{12} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{13} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{14} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{15} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{16} = {'RDLm','RDLi','RDLi','RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{17} = {'RDLm','RDLi','RDLi','RDLi','RDLm','RDLi','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{18} = {'RDLm','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLm','RDLi','RDLi'};
conf.Radials.TypesList{19} = {'RDLm','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLi','RDLi','RDLi'};
conf.Radials.TypesList{20} = {'RDLm','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLi','RDLi','RDLi'};
conf.Radials.TypesList{21} = {'RDLm','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLi','RDLi','RDLm'};
conf.Radials.TypesList{22} = {'RDLm','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLm','RDLi','RDLm'};
conf.Radials.TypesList{23} = {'RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLi','RDLi','RDLm'};
conf.Radials.TypesList{24} = {'RDLi','RDLi','RDLi','RDLm','RDLm','RDLi','RDLm','RDLm','RDLi','RDLi','RDLi','RDLm'};

numSites = numel(conf.Radials.Sites);
numTypes = numel(conf.Radials.TypesList);
for row = 1:numTypes
    for col = 1:numSites
        conf.Radials.FilePrefixList{row,col}=[char(conf.Radials.TypesList{row}(col)),'_', ...
                                             char(conf.Radials.Sites{col}),'_'];
    end
end

% Don't define conf.Radials.RangeLims and conf.Radials.BearLims.  interpRadials
% will then use unique ranges and unique bearings.
 conf.Radials.RangeLims = [];
 conf.Radials.BearLims =  [];

% Make numSites x 2, with 1st col=0.3, 2nd col=0.5
conf.Radials.RangeBearSlop = ones(numSites,1) * [0.3, 0.5];
conf.Radials.MaskFiles = strcat(conf.Radials.Sites,'Mask.txt')';
conf.Radials.MaskFiles = fullfile_multiple(baseConfDir,'masks','ruv', ... 
                         conf.Radials.MaskFiles );

%% Config parameters for making totals from radials
conf.Totals.DomainName = domain;
conf.Totals.CreationInfo = 'Mike Cook - NPS';
% TUV output directory
conf.Totals.BaseDir = fullfile(baseResultsDir,'Totals',conf.Totals.DomainName);
conf.Totals.FilePrefix = strcat('tuv_',conf.Totals.DomainName,'_');
conf.Totals.FileSuffix = '.mat';
conf.Totals.GridFile = fullfile(baseConfDir,'grids', ...
                                [conf.Totals.DomainName,'.grid']);
conf.Totals.spatthresh = 3;  % Km
conf.Totals.tempthresh = 1/24/2-eps;
conf.Totals.MaxTotSpeed = 100;
% Needs to be a cell array of cell arrays
conf.Totals.cleanTotalsVarargin = { { 'GDOPMaxOrthog','TotalErrors',2 } };

conf.Totals.MaskFile = '';

%% OMA
conf.OMA.ModesFileName = [conf.Totals.DomainName,'_OMA_Domain.mat'];
conf.OMA.BoundaryFileName = [conf.Totals.DomainName,'_OMA_Boundary.mat'];
conf.OMA.BaseDir = fullfile(baseResultsDir,'Oma', ...
                            conf.Totals.DomainName);
conf.OMA.HourPlotDir = strrep(conf.OMA.BaseDir,'Data','Plots');

%% Generic config parameters for making plots (totals and radials)

% SEEMS TO NEED THE .mat - without it won't load.
% I think the lambert projection may be the problem with the trajectories,
% lets try mercator - also make a new, bigger coastline to include the PSLR
% data.
% conf.Plot.coastFile = fullfile(baseConfDir,'coasts','COCMP_coast.mat');
% conf.Plot.Projection = 'lambert';
conf.Plot.coastFile = fullfile(baseConfDir,'coasts','COCMP_Big_mercat.mat');
conf.Plot.Projection = 'Mercator';
conf.Plot.plotBasemap_xargs = {'patch',[.5 .9 .5],'edgecolor','k'};
conf.Plot.m_grid_xargs = {'linewidth',2,'linestyle','--', ...
                          'tickdir','out','fontsize',18,'box','fancy' };
conf.Plot.Speckle = true;

conf.Plot.PaperWidth = 11;
conf.Plot.PaperHeight= 11;


%% Config parms for the hourly TUV plot

conf.HourPlot.BaseDir = strrep(conf.Totals.BaseDir,'Data','Plots');
conf.HourPlot.DomainName = conf.Totals.DomainName;
% conf.HourPlot.Type = 'OMA';
% % % conf.HourPlot.FilePrefix = strcat(conf.HourPlot.Type,...
% % %   '_',conf.HourPlot.DomainName,'_');

% Defaults to axisLims( Data, 0.1 ) if not given
conf.HourPlot.axisLims = [-123.45,-121.7,36.2,37.05];

% % % conf.HourPlot.VectorScale = 0.015;
conf.HourPlot.VectorScale = 0.015/2;
conf.HourPlot.VelocityScaleLength = 25;
conf.HourPlot.VelocityScaleLocation = [-121.8333, 37.01];

% Location to put a velocity scale.  Defaults to 10% from upper right corner.
conf.HourPlot.DistanceBarLength = 10;
conf.HourPlot.DistanceBarLocation = [-121.82,36.51];
%  Color scale to use for plotting vectors.  Defaults to 
%  0:10:max_velocity+10 if not supplied.
conf.HourPlot.ColorTicks = 0:10:80;
% % % conf.HourPlot.ColorMap = 'jet';
conf.HourPlot.plotData_xargs = {}; %
%conf.HourPlot.TitleString = {};
conf.HourPlot.Print = false;


%% Config parameters for making the whole domain radial plots

conf.RadialPlot.BaseDir = conf.HourPlot.BaseDir;
conf.RadialPlot.DomainName = conf.Totals.DomainName;
conf.RadialPlot.Type = conf.HourPlot.Type;
conf.RadialPlot.RadialType = 'Rorig'; %'RTUV'
conf.RadialPlot.FilePrefix = strcat('Rad_',conf.HourPlot.DomainName,'_');
conf.RadialPlot.axisLims = conf.HourPlot.axisLims;  % [-123.55,-121.45,35.45,38];
conf.RadialPlot.DistanceBarLength = conf.HourPlot.DistanceBarLength;
%conf.RadialPlot.ColorOrder = Defaults to get(gca,'colororder') before clearing plot.
conf.RadialPlot.DistanceBarLocation = conf.HourPlot.DistanceBarLocation;
conf.RadialPlot.plotData_xargs = {};
%conf.RadialPlot.TitleString = {};
conf.RadialPlot.Print = false; %true

%% For hourly individual radial coverage/interpolation and currents.
conf.IndivRadialPlot.BaseDir = strrep(baseResultsDir,'Data','Plots');
conf.IndivRadialPlot.BaseDir = fullfile(conf.IndivRadialPlot.BaseDir, ...
                               'Radials');
conf.IndivRadialPlot.CoverFilePrefix = 'Cover_';
conf.IndivRadialPlot.CurrentFilePrefix='Curr_';

%%
conf.meanTUV.Type = conf.HourPlot.Type;
conf.meanTUV.DomainName = conf.Totals.DomainName;
conf.meanTUV.BaseDir = fullfile(baseResultsDir,'AverageTotals', ...
                                conf.Totals.DomainName);
                            
% % % conf.meanTUV.FilePrefix = strcat('tuv_',conf.Totals.DomainName,'_');
conf.meanTUV.FileSuffix = '.mat';
conf.meanTUV.PlotDir = strrep(conf.meanTUV.BaseDir,'Data','Plots');
conf.meanTUV.Thresh = 18;   % how many hours required to plot mean arrow.
conf.meanTUV.avgTime = 25;  % # hours in averaging period

%% Actual trajectory confs
conf.Traj.BaseDir = fullfile(baseResultsDir,'Trajectories', ...
                             conf.Totals.DomainName);
conf.Traj.FilePrefix = strcat('trj_',conf.Totals.DomainName,'_');
conf.Traj.FileSuffix = conf.Totals.FileSuffix;
conf.Traj.MinTimes = 15;

% The grid - may want to make a file - need data in a grid for GNOME and
% particle_track_ode_grid_LonLat.m
dat=load(conf.Totals.GridFile);
[LonGrid,LatGrid] = meshgrid_vector_data(dat(:,1),dat(:,2));
% Decimate
LonGrid = LonGrid(1:3:end,1:3:end);
LatGrid = LatGrid(1:3:end,1:3:end);
conf.Traj.StartLoc=[LonGrid(:), LatGrid(:)];

conf.Traj.PlotDir = strrep(conf.Traj.BaseDir,'Data','Plots');

%% Actual animation confs
conf.TrajAnim.convCommand = '/ImageMagick-6.4.0/bin/convert';
% % conf.TrajAnim.convCommand = '/sw/bin/convert';
conf.TrajAnim.convFlags = '-delay 15 -loop 0';
conf.TrajAnim.tmpDir = [baseDir,conf.Totals.DomainName,'_TRAJ_TMP_AR_FRAMESDir'];
conf.TrajAnim.timeStep = 1/2/24;  % expressed in hours
conf.TrajAnim.trajColor = 'k';
conf.TrajAnim.tailLen = 12;  % expressed in time steps
conf.TrajAnim.headSize = 22;
conf.TrajAnim.PlotDir = conf.Traj.PlotDir;
conf.TrajAnim.FilePrefix = strcat('trjAnim_',conf.Totals.DomainName,'_');
conf.TrajAnim.FileSuffix = '.gif';

%% Predicted trajectory confs
conf.predTraj.BaseDir=fullfile(baseResultsDir,'PredictedTrajectories', ...
                               conf.Totals.DomainName);
conf.predTraj.FilePrefix = strcat('pred_',conf.Traj.FilePrefix);
conf.predTraj.FileSuffix = conf.Traj.FileSuffix;
conf.predTraj.StartLoc = conf.Traj.StartLoc;
conf.predTraj.PlotDir = strrep(conf.predTraj.BaseDir,'Data','Plots');

% Locations needed for prediction must be a on a rectangular grid.
conf.predTraj.Lon = LonGrid;
conf.predTraj.Lat = LatGrid;

%% These are the confs for the predicted tide, which will be used for the
% GNOME predicted U/V's and the predicted trajectories.
% Number of past U/V fields to use in tidal analysis for prediction.
conf.predUV.pastHours = 72; 
% # of UV fields that must be present to proceed.
conf.predUV.minGoodHours = 48;
% Interpolation time step, can be other than 1 hour, but generally set to 1
% hour.  This is to fill in individual gridpoints to reduce the gapiness.
conf.predUV.interpTimeStep = 1;
% Gaps bigger than this will be left uninterpolated.
conf.predUV.maxGap = 3;
% How far, in hours, to predict into the future.
conf.predUV.predicTime = 24;
% Number of actual hours in the past to consider in the mean to add to the
% tidal prediction
conf.predUV.actHours = 24;
% min # of good hours in actHours that must be present for predicted U/V to
% be written to output struct.
conf.predUV.minGoodMeanHrs = 18;

conf.predUV.writeFlag = true;
conf.predUV.BaseDir = fullfile(baseResultsDir,'PredictedOma', ...
                            conf.Totals.DomainName);
conf.predUV.FilePrefix = [ 'pred_oma_' conf.Totals.DomainName '_' ];
conf.predUV.FileSuffix = '.mat';
                        
%% Predicted animation confs
conf.predTrajAnim.tmpDir = [baseDir,conf.Totals.DomainName,'_PREDTRAJ_TMP_AR_FRAMESDIR'];
conf.predTrajAnim.timeStep = conf.TrajAnim.timeStep;
conf.predTrajAnim.trajColor = 'm';
conf.predTrajAnim.tailLen = conf.TrajAnim.tailLen;
conf.predTrajAnim.headSize = conf.TrajAnim.headSize;
conf.predTrajAnim.PlotDir = conf.predTraj.PlotDir;
conf.predTrajAnim.FilePrefix = strcat('pred_',conf.TrajAnim.FilePrefix);
conf.predTrajAnim.FileSuffix = conf.TrajAnim.FileSuffix;

%% GNOME netcdf confs
conf.GNOME.BaseDir = fullfile(baseResultsDir,'Gnome', ...
                              conf.Totals.DomainName);

