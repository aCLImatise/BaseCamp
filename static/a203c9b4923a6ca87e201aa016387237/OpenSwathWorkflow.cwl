class: CommandLineTool
id: OpenSwathWorkflow.cwl
inputs:
- id: in
  doc: "*                    Input files separated by blank (valid formats: 'mzML',\
    \ 'mzXML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -in
- id: tr
  doc: "*                     Transition file ('TraML','tsv','pqp') (valid formats:\
    \ 'traML', 'tsv', 'pqp')"
  type: File
  inputBinding:
    prefix: -tr
- id: tr_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'traML', 'tsv', 'pqp')"
  type: string
  inputBinding:
    prefix: -tr_type
- id: tr_irt
  doc: "Transition file ('TraML') (valid formats: 'traML')"
  type: File
  inputBinding:
    prefix: -tr_irt
- id: out_features
  doc: "Output file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_features
- id: out_tsv
  doc: "TSV output file (mProphet compatible TSV file) (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -out_tsv
- id: out_osw
  doc: "OSW output file (PyProphet compatible SQLite file) (valid formats: 'osw')"
  type: File
  inputBinding:
    prefix: -out_osw
- id: rt_extraction_window
  doc: "Only extract RT around this value (-1 means extract over the whole range,\
    \ a value of 600 means to extract around +/- 300 s of the expected elution). (default:\
    \ '600')"
  type: string
  inputBinding:
    prefix: -rt_extraction_window
- id: ion_mobility_window
  doc: "Extraction window in ion mobility dimension (in milliseconds). This is the\
    \ full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds\
    \ on either side. (defau lt: '-1')"
  type: string
  inputBinding:
    prefix: -ion_mobility_window
- id: mz_extraction_window
  doc: "Extraction window used (in Thomson, to use ppm see -ppm flag) (default: '0.05'\
    \ min: '0')"
  type: string
  inputBinding:
    prefix: -mz_extraction_window
- id: ppm
  doc: M/z extraction_window is in ppm
  type: boolean
  inputBinding:
    prefix: -ppm
- id: sonar
  doc: Data is scanning SWATH data
  type: boolean
  inputBinding:
    prefix: -sonar
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
- id: debugging
  doc: Debugging
  type: boolean
  inputBinding:
    prefix: '- Debugging'
- id: library
  doc: Library parameters section
  type: boolean
  inputBinding:
    prefix: '- Library'
- id: rt_normalization
  doc: Parameters for the RTNormalization for iRT petides. This specifies how the
    RT alignment is performed and how outlier detection is applied. Outlier detection
    can be done iteratively (by defa ult) which removes one outlier per iteration
    or using the RANSAC algorithm.
  type: boolean
  inputBinding:
    prefix: '- RTNormalization'
- id: scoring
  doc: Scoring parameters section
  type: boolean
  inputBinding:
    prefix: '- Scoring'
outputs: []
cwlVersion: v1.1
baseCommand:
- OpenSwathWorkflow
