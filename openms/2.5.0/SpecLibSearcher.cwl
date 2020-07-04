class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SpecLibSearcher.cwl
inputs:
- id: in
  doc: "*                                      Input files (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: lib
  doc: "*                                      Searchable spectral library (MSP format)\
    \ (valid formats: 'msp')"
  type: File
  inputBinding:
    prefix: -lib
- id: out
  doc: "*                                     Output files. Have to be as many as\
    \ input files (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: fragment
  doc: ":mass_tolerance <tolerance>              Fragment mass tolerance (default:\
    \ '10.0')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: compare_function
  doc: "Function for similarity comparison (default: 'ZhangSimilarityScore' valid:\
    \ 'PeakAlignment', 'SpectrumAlignmentScore', 'SpectrumCheapDPCorr', 'SpectrumPrecursorComparator',\
    \ 'SteinScottImproveScore', 'ZhangSimilarityScore')"
  type: string
  inputBinding:
    prefix: -compare_function
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
- SpecLibSearcher
