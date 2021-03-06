function BW = createMaskBlueBack(Ihsv)
%createMask  Threshold RGB image using auto-generated code from colorThresholder app.
%  [BW,MASKEDRGBIMAGE] = createMask(RGB) thresholds image RGB using
%  auto-generated code from the colorThresholder App. The colorspace and
%  minimum/maximum values for each channel of the colorspace were set in the
%  App and result in a binary mask BW and a composite image maskedRGBImage,
%  which shows the original RGB image values under the mask BW.

% Auto-generated by colorThresholder app on 08-Nov-2016
%------------------------------------------------------


% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.861;
channel1Max = 0.470;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
BW = ( (Ihsv(:,:,1) >= channel1Min) | (Ihsv(:,:,1) <= channel1Max) ) & ...
    (Ihsv(:,:,2) >= channel2Min ) & (Ihsv(:,:,2) <= channel2Max) & ...
    (Ihsv(:,:,3) >= channel3Min ) & (Ihsv(:,:,3) <= channel3Max);

