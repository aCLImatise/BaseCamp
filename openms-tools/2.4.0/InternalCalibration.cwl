#!/usr/bin/env cwl-runner

baseCommand:
- InternalCalibration
class: CommandLineTool
cwlVersion: v1.0
id: internalcalibration
inputs:
- doc: "*                                Input peak file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                               Output file  (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Path to the Rscript executable (default: 'Rscript')."
  id: r_script_executable
  inputBinding:
    prefix: -rscript_executable
  type: File
- doc: "<delta m/z in [ppm]>  Finding calibrants in raw data uses this tolerance (for\
    \ lock masses and ID's). (default: '25')"
  id: ppm_match_tolerance
  inputBinding:
    prefix: -ppm_match_tolerance
  type: boolean
- doc: ":id_in <file>                          Identifications or features whose peptide\
    \ ID's serve as calibration masses. (valid formats: 'idXML', 'featureXML')"
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: ":lock_in <file>                        Input file containing reference m/z\
    \ values (text file with each line as: m/z ms-level charge) which occur in all\
    \ scans. (valid formats: 'csv')"
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: ":lock_out <file>                       Optional output file containing peaks\
    \ from 'in' which were matched to reference m/z values. Useful to see which peaks\
    \ were used for calibration. (valid formats: 'mzM L')"
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: ":lock_fail_out <file>                  Optional output file containing lock\
    \ masses which were NOT found or accepted(!) in data from 'in'. Useful to see\
    \ which peaks were used for calibration. (valid format s: 'mzML')"
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: :lock_require_mono                     Require all lock masses to be monoisotopic,
    i.e. not the iso1, iso2 etc ('charge' column is used to determine the spacing).
    Peaks which are not mono-isotopic are  not used.
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: :lock_require_iso                      Require all lock masses to have at least
    the +1 isotope. Peaks without isotope pattern are not used.
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: ":model_type <model>                    Type of function to be fitted to the\
    \ calibration points. (default: 'linear_weighted' valid: 'linear', 'linear_weighted',\
    \ 'quadratic', 'quadratic_weighted')"
  id: cal
  inputBinding:
    prefix: -cal
  type: boolean
- doc: "j ...                          Target MS levels to apply the transformation\
    \ onto. Does not affect calibrant collection. (default: '[1 2 3]')"
  id: ms_level
  inputBinding:
    prefix: -ms_level
  type: string
- doc: "<RT window in [sec]>          RT window (one-sided, i.e. left->center, or\
    \ center->right) around an MS scan in which calibrants are collected to build\
    \ a model. Set to -1 to use ALL calibrants for  all scans, i.e. a global model.\
    \ (default: '300')"
  id: rt_chunking
  inputBinding:
    prefix: -RT_chunking
  type: boolean
- doc: :enabled                            Apply RANSAC to calibration points to remove
    outliers before fitting a model.
  id: ransac
  inputBinding:
    prefix: -RANSAC
  type: boolean
- doc: ":threshold <threshold>              Threshold for accepting inliers (instrument\
    \ precision (not accuracy!) as ppm^2 distance) (default: '10')"
  id: ransac
  inputBinding:
    prefix: -RANSAC
  type: boolean
- doc: ":pc_inliers <# inliers>             Minimum percentage (of available data)\
    \ of inliers (<threshold away from model) to accept the model. (default: '30'\
    \ min: '1' max: '99')"
  id: ransac
  inputBinding:
    prefix: -RANSAC
  type: boolean
- doc: ":iter <# iterations>                Maximal # iterations. (default: '70')"
  id: ransac
  inputBinding:
    prefix: -RANSAC
  type: boolean
- doc: ":median <threshold>               The median ppm error of calibrated masses\
    \ must be smaller than this threshold. (default: '4')"
  id: goodness
  inputBinding:
    prefix: -goodness
  type: boolean
- doc: ":MAD <threshold>                  The median absolute deviation of the ppm\
    \ error of calibrated masses must be smaller than this threshold. (default: '1')"
  id: goodness
  inputBinding:
    prefix: -goodness
  type: boolean
- doc: ":models <table>            Table of model parameters for each spectrum. (valid\
    \ formats: 'csv')"
  id: quality_control
  inputBinding:
    prefix: -quality_control
  type: boolean
- doc: ":models_plot <image>       Plot image of model parameters for each spectrum.\
    \ (valid formats: 'png')"
  id: quality_control
  inputBinding:
    prefix: -quality_control
  type: boolean
- doc: ":residuals <table>         Table of pre- and post calibration errors. (valid\
    \ formats: 'csv')"
  id: quality_control
  inputBinding:
    prefix: -quality_control
  type: boolean
- doc: ":residuals_plot <image>    Plot image of pre- and post calibration errors.\
    \ (valid formats: 'png')"
  id: quality_control
  inputBinding:
    prefix: -quality_control
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
