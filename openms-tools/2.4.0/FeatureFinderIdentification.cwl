class: CommandLineTool
id: FeatureFinderIdentification.cwl
inputs:
- id: in
  doc: "*                        Input file: LC-MS raw data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: id
  doc: "*                        Input file: Peptide identifications derived directly\
    \ from 'in' (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: id_ext
  doc: "Input file: 'External' peptide identifications (e.g. from aligned runs) (valid\
    \ formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_ext
- id: out
  doc: "*                       Output file: Features (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: lib_out
  doc: "Output file: Assay library (valid formats: 'traML')"
  type: File
  inputBinding:
    prefix: -lib_out
- id: chrom_out
  doc: "Output file: Chromatograms (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -chrom_out
- id: candidates_out
  doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -candidates_out
- id: candidates_out
  doc: Optional output file with feature candidates.
  type: string
  inputBinding:
    prefix: -candidates_out
- id: extract
  doc: ":mz_window <value>         M/z window size for chromatogram extraction (unit:\
    \ ppm if 1 or greater, else Da/Th) (default: '10' min: '0')"
  type: boolean
  inputBinding:
    prefix: -extract
- id: extract
  doc: ":n_isotopes <number>       Number of isotopes to include in each peptide assay.\
    \ (default: '2' min: '2')"
  type: boolean
  inputBinding:
    prefix: -extract
- id: detect
  doc: ":peak_width <value>         Expected elution peak width in seconds, for smoothing\
    \ (Gauss filter). Also determines the RT extration window, unless set explicitly\
    \ via 'extract:rt_window'. (default: '60'  min: '0')"
  type: boolean
  inputBinding:
    prefix: -detect
- id: detect
  doc: ":mapping_tolerance <value>  RT tolerance (plus/minus) for mapping peptide\
    \ IDs to features. Absolute value in seconds if 1 or greater, else relative to\
    \ the RT span of the feature. (default: '0' min:  '0')"
  type: boolean
  inputBinding:
    prefix: -detect
- id: svm
  doc: ":samples <number>              Number of observations to use for training\
    \ ('0' for all) (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -svm
- id: svm
  doc: :no_selection                  By default, roughly the same number of positive
    and negative observations, with the same intensity distribution, are selected
    for training. This aims to reduce biases, but  also reduces the amount of training
    data. Set this flag to skip this procedure and consider all available observations
    (subject to 'svm:samples').
  type: boolean
  inputBinding:
    prefix: -svm
- id: svm
  doc: ":xval_out <choice>             Output file: SVM cross-validation (parameter\
    \ optimization) results (valid formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -svm
- id: svm
  doc: ":kernel <choice>               SVM kernel (default: 'RBF' valid: 'RBF', 'linear')"
  type: boolean
  inputBinding:
    prefix: -svm
- id: svm
  doc: ":xval <number>                 Number of partitions for cross-validation (parameter\
    \ optimization) (default: '5' min: '1')"
  type: boolean
  inputBinding:
    prefix: -svm
- id: svm
  doc: ":log2_C <values>               Values to try for the SVM parameter 'C' during\
    \ parameter optimization. A value 'x' is used as 'C = 2^x'. (default: '[-5 -3\
    \ -1 1 3 5 7 9 11 13 15]')"
  type: boolean
  inputBinding:
    prefix: -svm
- id: svm
  doc: ":log2_gamma <values>           Values to try for the SVM parameter 'gamma'\
    \ during parameter optimization (RBF kernel only). A value 'x' is used as 'gamma\
    \ = 2^x'. (default: '[-15 -13 -11 -9 -7 -5 -3 -1 1  3]')"
  type: boolean
  inputBinding:
    prefix: -svm
- id: model
  doc: ":type <choice>               Type of elution model to fit to features (default:\
    \ 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  type: boolean
  inputBinding:
    prefix: -model
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
- FeatureFinderIdentification
