class: CommandLineTool
id: SpecLibSearcher.cwl
inputs:
- id: in_in
  doc: "*                                      Input files (valid formats: 'mzML')"
  type: string?
  inputBinding:
    prefix: -in
- id: in_lib
  doc: "*                                      Searchable spectral library (MSP format)\
    \ (valid formats: 'msp')"
  type: File?
  inputBinding:
    prefix: -lib
- id: in_out
  doc: "*                                     Output files. Have to be as many as\
    \ input files (valid formats: 'idXML')"
  type: string?
  inputBinding:
    prefix: -out
- id: in_fragment
  doc: ":mass_tolerance <tolerance>              Fragment mass tolerance (default:\
    \ '10')"
  type: boolean?
  inputBinding:
    prefix: -fragment
- id: in_compare_function
  doc: "Function for similarity comparison (default: 'ZhangSimilarityScore' valid:\
    \ 'PeakAlignment', 'SpectrumAlignmentScore', 'SpectrumCheapDPCorr', 'SpectrumPrecursorComparator',\
    \ 'SteinScottImproveScore', 'ZhangSimilarityScore')"
  type: string?
  inputBinding:
    prefix: -compare_function
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
hints: []
cwlVersion: v1.1
baseCommand:
- SpecLibSearcher
