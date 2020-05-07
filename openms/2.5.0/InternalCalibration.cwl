class: CommandLineTool
id: InternalCalibration.cwl
inputs:
- id: in
  doc: "*                                Input peak file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                               Output file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: r_script_executable
  doc: "Path to the Rscript executable (default: 'Rscript')."
  type: File
  inputBinding:
    prefix: -rscript_executable
- id: ppm_match_tolerance
  doc: "<delta m/z in [ppm]>  Finding calibrants in raw data uses this tolerance (for\
    \ lock masses and ID's). (default: '25.0')"
  type: boolean
  inputBinding:
    prefix: -ppm_match_tolerance
- id: cal
  doc: ":id_in <file>                          Identifications or features whose peptide\
    \ ID's serve as calibration masses. (valid formats: 'idXML', 'featureXML')"
  type: boolean
  inputBinding:
    prefix: -cal
- id: cal
  doc: ":lock_in <file>                        Input file containing reference m/z\
    \ values (text file with each line as: m/z ms-level charge) which occur in all\
    \ scans. (valid formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -cal
- id: cal
  doc: ":lock_out <file>                       Optional output file containing peaks\
    \ from 'in' which were matched to reference m/z values. Useful to see which peaks\
    \ were used for calibration. (valid formats: 'mzM L')"
  type: boolean
  inputBinding:
    prefix: -cal
- id: cal
  doc: ":lock_fail_out <file>                  Optional output file containing lock\
    \ masses which were NOT found or accepted(!) in data from 'in'. Useful to see\
    \ which peaks were used for calibration. (valid format s: 'mzML')"
  type: boolean
  inputBinding:
    prefix: -cal
- id: cal
  doc: :lock_require_mono                     Require all lock masses to be monoisotopic,
    i.e. not the iso1, iso2 etc ('charge' column is used to determine the spacing).
    Peaks which are not mono-isotopic are  not used.
  type: boolean
  inputBinding:
    prefix: -cal
- id: cal
  doc: :lock_require_iso                      Require all lock masses to have at least
    the +1 isotope. Peaks without isotope pattern are not used.
  type: boolean
  inputBinding:
    prefix: -cal
- id: cal
  doc: ":model_type <model>                    Type of function to be fitted to the\
    \ calibration points. (default: 'linear_weighted' valid: 'linear', 'linear_weighted',\
    \ 'quadratic', 'quadratic_weighted')"
  type: boolean
  inputBinding:
    prefix: -cal
- id: ms_level
  doc: "j ...                          Target MS levels to apply the transformation\
    \ onto. Does not affect calibrant collection. (default: '[1 2 3]')"
  type: string
  inputBinding:
    prefix: -ms_level
- id: rt_chunking
  doc: "<RT window in [sec]>          RT window (one-sided, i.e. left->center, or\
    \ center->right) around an MS scan in which calibrants are collected to build\
    \ a model. Set to -1 to use ALL calibrants for  all scans, i.e. a global model.\
    \ (default: '300.0')"
  type: boolean
  inputBinding:
    prefix: -RT_chunking
- id: ransac
  doc: :enabled                            Apply RANSAC to calibration points to remove
    outliers before fitting a model.
  type: boolean
  inputBinding:
    prefix: -RANSAC
- id: ransac
  doc: ":threshold <threshold>              Threshold for accepting inliers (instrument\
    \ precision (not accuracy!) as ppm^2 distance) (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -RANSAC
- id: ransac
  doc: ":pc_inliers <# inliers>             Minimum percentage (of available data)\
    \ of inliers (<threshold away from model) to accept the model. (default: '30'\
    \ min: '1' max: '99')"
  type: boolean
  inputBinding:
    prefix: -RANSAC
- id: ransac
  doc: ":iter <# iterations>                Maximal # iterations. (default: '70')"
  type: boolean
  inputBinding:
    prefix: -RANSAC
- id: goodness
  doc: ":median <threshold>               The median ppm error of calibrated masses\
    \ must be smaller than this threshold. (default: '4.0')"
  type: boolean
  inputBinding:
    prefix: -goodness
- id: goodness
  doc: ":MAD <threshold>                  The median absolute deviation of the ppm\
    \ error of calibrated masses must be smaller than this threshold. (default: '2.0')"
  type: boolean
  inputBinding:
    prefix: -goodness
- id: quality_control
  doc: ":models <table>            Table of model parameters for each spectrum. (valid\
    \ formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -quality_control
- id: quality_control
  doc: ":models_plot <image>       Plot image of model parameters for each spectrum.\
    \ (valid formats: 'png')"
  type: boolean
  inputBinding:
    prefix: -quality_control
- id: quality_control
  doc: ":residuals <table>         Table of pre- and post calibration errors. (valid\
    \ formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -quality_control
- id: quality_control
  doc: ":residuals_plot <image>    Plot image of pre- and post calibration errors.\
    \ (valid formats: 'png')"
  type: boolean
  inputBinding:
    prefix: -quality_control
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- InternalCalibration
