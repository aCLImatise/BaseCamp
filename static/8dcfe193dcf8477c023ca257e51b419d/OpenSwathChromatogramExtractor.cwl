class: CommandLineTool
id: OpenSwathChromatogramExtractor.cwl
inputs:
- id: in_in
  doc: "*                   Input files separated by blank (valid formats: 'mzML')"
  type: string?
  inputBinding:
    prefix: -in
- id: in_tr
  doc: "*                    Transition file ('TraML' or 'csv') (valid formats: 'csv',\
    \ 'traML')"
  type: File?
  inputBinding:
    prefix: -tr
- id: in_rt_norm
  doc: "RT normalization file (how to map the RTs of this run to the ones stored in\
    \ the library) (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -rt_norm
- id: in_out
  doc: "*                   Output file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_min_upper_edge_dist
  doc: "Minimal distance to the edge to still consider a precursor, in Thomson (default:\
    \ '0.0')"
  type: double?
  inputBinding:
    prefix: -min_upper_edge_dist
- id: in_rt_window
  doc: "Extraction window in RT dimension (-1 means extract over the whole range).\
    \ This is the full window size, e.g. a value of 1000 seconds would extract 500\
    \ seconds on either side. (default: '-1.0')"
  type: long?
  inputBinding:
    prefix: -rt_window
- id: in_ion_mobility_window
  doc: "Extraction window in ion mobility dimension (in milliseconds). This is the\
    \ full window size, e.g. a value of 10 milliseconds would extract 5 milliseconds\
    \ on either side. (default: '-1.0')"
  type: long?
  inputBinding:
    prefix: -ion_mobility_window
- id: in_mz_window
  doc: "Extraction window in m/z dimension (in Thomson, to use ppm see -ppm flag).\
    \ This is the full window size, e.g. 100 ppm would extract 50 ppm on either side.\
    \ (default: '0.05' min: '0.0')"
  type: long?
  inputBinding:
    prefix: -mz_window
- id: in_ppm
  doc: M/z extraction_window is in ppm
  type: boolean?
  inputBinding:
    prefix: -ppm
- id: in_is_swath
  doc: Set this flag if the data is SWATH data
  type: boolean?
  inputBinding:
    prefix: -is_swath
- id: in_extract_ms_one
  doc: Extract the MS1 transitions based on the precursor values in the TraML file
    (useful for extracting MS1 XIC)
  type: boolean?
  inputBinding:
    prefix: -extract_MS1
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                   Output file (valid formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- OpenSwathChromatogramExtractor
