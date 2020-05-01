#!/usr/bin/env cwl-runner

baseCommand:
- FeatureFinderIdentification
class: CommandLineTool
cwlVersion: v1.0
id: featurefinderidentification
inputs:
- doc: "*                        Input file: LC-MS raw data (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                        Input file: Peptide identifications derived directly\
    \ from 'in' (valid formats: 'idXML')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: "Input file: 'External' peptide identifications (e.g. from aligned runs) (valid\
    \ formats: 'idXML')"
  id: id_ext
  inputBinding:
    prefix: -id_ext
  type: File
- doc: "*                       Output file: Features (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file: Assay library (valid formats: 'traML')"
  id: lib_out
  inputBinding:
    prefix: -lib_out
  type: File
- doc: "Output file: Chromatograms (valid formats: 'mzML')"
  id: chrom_out
  inputBinding:
    prefix: -chrom_out
  type: File
- doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  id: candidates_out
  inputBinding:
    prefix: -candidates_out
  type: File
- doc: ":batch_size <number>       Nr of peptides used in each batch of chromatogram\
    \ extraction. Smaller values decrease memory usage but increase runtime. (default:\
    \ '1000' min: '1')"
  id: extract
  inputBinding:
    prefix: -extract
  type: boolean
- doc: ":mz_window <value>         M/z window size for chromatogram extraction (unit:\
    \ ppm if 1 or greater, else Da/Th) (default: '10.0' min: '0.0')"
  id: extract
  inputBinding:
    prefix: -extract
  type: boolean
- doc: ":n_isotopes <number>       Number of isotopes to include in each peptide assay.\
    \ (default: '2' min: '2')"
  id: extract
  inputBinding:
    prefix: -extract
  type: boolean
- doc: ":peak_width <value>         Expected elution peak width in seconds, for smoothing\
    \ (Gauss filter). Also determines the RT extration window, unless set explicitly\
    \ via 'extract:rt_window'. (default: '60.0 ' min: '0.0')"
  id: detect
  inputBinding:
    prefix: -detect
  type: boolean
- doc: ":mapping_tolerance <value>  RT tolerance (plus/minus) for mapping peptide\
    \ IDs to features. Absolute value in seconds if 1 or greater, else relative to\
    \ the RT span of the feature. (default: '0.0' min:  '0.0')"
  id: detect
  inputBinding:
    prefix: -detect
  type: boolean
- doc: ":samples <number>              Number of observations to use for training\
    \ ('0' for all) (default: '0' min: '0')"
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: :no_selection                  By default, roughly the same number of positive
    and negative observations, with the same intensity distribution, are selected
    for training. This aims to reduce biases, but  also reduces the amount of training
    data. Set this flag to skip this procedure and consider all available observations
    (subject to 'svm:samples').
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: ":xval_out <choice>             Output file: SVM cross-validation (parameter\
    \ optimization) results (valid formats: 'csv')"
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: ":kernel <choice>               SVM kernel (default: 'RBF' valid: 'RBF', 'linear')"
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: ":xval <number>                 Number of partitions for cross-validation (parameter\
    \ optimization) (default: '5' min: '1')"
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: ":log2_C <values>               Values to try for the SVM parameter 'C' during\
    \ parameter optimization. A value 'x' is used as 'C = 2^x'. (default: '[-5.0 -3.0\
    \ -1.0 1.0 3.0 5.0 7.0 9.0 11.0 13.0 15.0]')"
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: ":log2_gamma <values>           Values to try for the SVM parameter 'gamma'\
    \ during parameter optimization (RBF kernel only). A value 'x' is used as 'gamma\
    \ = 2^x'. (default: '[-15.0 -13.0 -11.0 -9.0 -7.0  -5.0 -3.0 -1.0 1.0 3.0]')"
  id: svm
  inputBinding:
    prefix: -svm
  type: boolean
- doc: ":type <choice>               Type of elution model to fit to features (default:\
    \ 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  id: model
  inputBinding:
    prefix: -model
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
