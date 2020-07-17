class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/OpenSwathWorkflow.cwl
inputs:
- id: in
  doc: "*                        Input files separated by blank (valid formats: 'mzML',\
    \ 'mzXML', 'sqMass')"
  type: File
  inputBinding:
    prefix: -in
- id: tr
  doc: "*                         Transition file ('TraML','tsv','pqp') (valid formats:\
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
  doc: "Transition file ('TraML') (valid formats: 'traML', 'tsv', 'pqp')"
  type: File
  inputBinding:
    prefix: -tr_irt
- id: tr_irt_nonlinear
  doc: "Additional nonlinear transition file ('TraML') (valid formats: 'traML', 'tsv',\
    \ 'pqp')"
  type: File
  inputBinding:
    prefix: -tr_irt_nonlinear
- id: out_features
  doc: "Output file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_features
- id: out_tsv
  doc: "TSV output file (mProphet-compatible TSV file) (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -out_tsv
- id: out_osw
  doc: "OSW output file (PyProphet-compatible SQLite file) (valid formats: 'osw')"
  type: File
  inputBinding:
    prefix: -out_osw
- id: sonar
  doc: Data is scanning SWATH data
  type: boolean
  inputBinding:
    prefix: -sonar
- id: rt_extraction_window
  doc: "Only extract RT around this value (-1 means extract over the whole range,\
    \ a value of 600 means to extract around +/- 300 s of the expected elution). (default:\
    \ '600.0')"
  type: string
  inputBinding:
    prefix: -rt_extraction_window
- id: ion_mobility_window
  doc: "Extraction window in ion mobility dimension (in milliseconds). This is the\
    \ full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds\
    \ on either side. (default: '-1.0')"
  type: string
  inputBinding:
    prefix: -ion_mobility_window
- id: mz_extraction_window
  doc: "Extraction window in Thomson or ppm (see mz_extraction_window_unit) (default:\
    \ '0.05' min: '0.0')"
  type: string
  inputBinding:
    prefix: -mz_extraction_window
- id: mz_extraction_window_ms_one
  doc: "Extraction window used in MS1 in Thomson or ppm (see mz_extraction_window_ms1_unit)\
    \ (default: '0.05' min: '0.0')"
  type: string
  inputBinding:
    prefix: -mz_extraction_window_ms1
- id: im_extraction_window_ms_one
  doc: "Extraction window in ion mobility dimension for MS1 (in milliseconds). (default:\
    \ '-1.0')"
  type: string
  inputBinding:
    prefix: -im_extraction_window_ms1
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
- OpenSwathWorkflow
