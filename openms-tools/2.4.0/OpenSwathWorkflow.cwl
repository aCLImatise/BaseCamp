#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathWorkflow
class: CommandLineTool
cwlVersion: v1.0
id: openswathworkflow
inputs:
- doc: "*                    Input files separated by blank (valid formats: 'mzML',\
    \ 'mzXML', 'sqMass')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                     Transition file ('TraML','tsv','pqp') (valid formats:\
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
- doc: "Transition file ('TraML') (valid formats: 'traML')"
  id: tr_irt
  inputBinding:
    prefix: -tr_irt
  type: File
- doc: "Output file (valid formats: 'featureXML')"
  id: out_features
  inputBinding:
    prefix: -out_features
  type: File
- doc: "TSV output file (mProphet compatible TSV file) (valid formats: 'tsv')"
  id: out_tsv
  inputBinding:
    prefix: -out_tsv
  type: File
- doc: "OSW output file (PyProphet compatible SQLite file) (valid formats: 'osw')"
  id: out_osw
  inputBinding:
    prefix: -out_osw
  type: File
- doc: "Only extract RT around this value (-1 means extract over the whole range,\
    \ a value of 600 means to extract around +/- 300 s of the expected elution). (default:\
    \ '600')"
  id: rt_extraction_window
  inputBinding:
    prefix: -rt_extraction_window
  type: string
- doc: "Extraction window in ion mobility dimension (in milliseconds). This is the\
    \ full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds\
    \ on either side. (defau lt: '-1')"
  id: ion_mobility_window
  inputBinding:
    prefix: -ion_mobility_window
  type: string
- doc: "Extraction window used (in Thomson, to use ppm see -ppm flag) (default: '0.05'\
    \ min: '0')"
  id: mz_extraction_window
  inputBinding:
    prefix: -mz_extraction_window
  type: string
- doc: M/z extraction_window is in ppm
  id: ppm
  inputBinding:
    prefix: -ppm
  type: boolean
- doc: Data is scanning SWATH data
  id: sonar
  inputBinding:
    prefix: -sonar
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
- doc: Debugging
  id: debugging
  inputBinding:
    prefix: '- Debugging'
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
