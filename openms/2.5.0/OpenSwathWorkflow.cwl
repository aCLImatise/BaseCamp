#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathWorkflow
class: CommandLineTool
cwlVersion: v1.0
id: openswathworkflow
inputs:
- doc: "*                        Input files separated by blank (valid formats: 'mzML',\
    \ 'mzXML', 'sqMass')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                         Transition file ('TraML','tsv','pqp') (valid formats:\
    \ 'traML', 'tsv', 'pqp')"
  id: tr
  inputBinding:
    prefix: -tr
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'traML', 'tsv', 'pqp')"
  id: tr_type
  inputBinding:
    prefix: -tr_type
  type: string
- doc: "Transition file ('TraML') (valid formats: 'traML', 'tsv', 'pqp')"
  id: tr_irt
  inputBinding:
    prefix: -tr_irt
  type: File
- doc: "Additional nonlinear transition file ('TraML') (valid formats: 'traML', 'tsv',\
    \ 'pqp')"
  id: tr_irt_nonlinear
  inputBinding:
    prefix: -tr_irt_nonlinear
  type: File
- doc: "Output file (valid formats: 'featureXML')"
  id: out_features
  inputBinding:
    prefix: -out_features
  type: File
- doc: "TSV output file (mProphet-compatible TSV file) (valid formats: 'tsv')"
  id: out_tsv
  inputBinding:
    prefix: -out_tsv
  type: File
- doc: "OSW output file (PyProphet-compatible SQLite file) (valid formats: 'osw')"
  id: out_osw
  inputBinding:
    prefix: -out_osw
  type: File
- doc: Data is scanning SWATH data
  id: sonar
  inputBinding:
    prefix: -sonar
  type: boolean
- doc: "Only extract RT around this value (-1 means extract over the whole range,\
    \ a value of 600 means to extract around +/- 300 s of the expected elution). (default:\
    \ '600.0')"
  id: rt_extraction_window
  inputBinding:
    prefix: -rt_extraction_window
  type: string
- doc: "Extraction window in ion mobility dimension (in milliseconds). This is the\
    \ full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds\
    \ on either side.  (default: '-1.0')"
  id: ion_mobility_window
  inputBinding:
    prefix: -ion_mobility_window
  type: string
- doc: "Extraction window in Thomson or ppm (see mz_extraction_window_unit) (default:\
    \ '0.05' min: '0.0')"
  id: mz_extraction_window
  inputBinding:
    prefix: -mz_extraction_window
  type: string
- doc: "Extraction window used in MS1 in Thomson or ppm (see mz_extraction_window_ms1_unit)\
    \ (default: '0.05' min: '0.0')"
  id: mz_extraction_window_ms1
  inputBinding:
    prefix: -mz_extraction_window_ms1
  type: string
- doc: "Extraction window in ion mobility dimension for MS1 (in milliseconds). (default:\
    \ '-1.0')"
  id: im_extraction_window_ms1
  inputBinding:
    prefix: -im_extraction_window_ms1
  type: string
- doc: ":irt_mzml <file>          Chromatogram mzML containing the iRT peptides (valid\
    \ formats: 'mzML')"
  id: debugging
  inputBinding:
    prefix: -Debugging
  type: boolean
- doc: ":irt_trafo <file>         Transformation file for RT transform (valid formats:\
    \ 'trafoXML')"
  id: debugging
  inputBinding:
    prefix: -Debugging
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
- doc: Parameters for the m/z and ion mobility calibration.
  id: calibration
  inputBinding:
    prefix: '- Calibration'
  type: boolean
- doc: Library parameters section
  id: library
  inputBinding:
    prefix: '- Library'
  type: boolean
- doc: Parameters for the RTNormalization for iRT petides. This specifies how the
    RT alignment is performed and how outlier detection is applied. Outlier detection
    can be done iteratively (by defa ult) which removes one outlier per iteration
    or using the RANSAC algorithm.
  id: rt_normalization
  inputBinding:
    prefix: '- RTNormalization'
  type: boolean
- doc: Scoring parameters section
  id: scoring
  inputBinding:
    prefix: '- Scoring'
  type: boolean
- doc: ://www.openms.de/documentation/UTILS_OpenSwathWorkflow.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
