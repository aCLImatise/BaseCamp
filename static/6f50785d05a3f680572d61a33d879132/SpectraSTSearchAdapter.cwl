class: CommandLineTool
id: SpectraSTSearchAdapter.cwl
inputs:
- id: executable
  doc: '*                                                            Path to the SpectraST
    executable to use; may be empty if the executable is globally available.'
  type: File
  inputBinding:
    prefix: -executable
- id: spectra_files
  doc: "[ <SearchFileName2> ... <SearchFileNameN> ]*  File names(s) of spectra to\
    \ be searched. (valid formats: 'mzML', 'mzXML', 'mzData', 'dta', 'msp')"
  type: string
  inputBinding:
    prefix: -spectra_files
- id: output_files
  doc: "[ <OutputFileName2> ... <OutputFileNameN> ]*       Output files. Make sure\
    \ to specify one output file for each input file (valid formats: 'txt', 'tsv',\
    \ 'pep.xml', 'xml', 'pepXML',  'html')"
  type: string
  inputBinding:
    prefix: -output_files
- id: library_file
  doc: ".splib*                                                Specify library file.\
    \ (valid formats: 'splib')"
  type: string
  inputBinding:
    prefix: -library_file
- id: sequence_database_file
  doc: ".fasta                                The sequence database. (valid formats:\
    \ 'fasta')"
  type: string
  inputBinding:
    prefix: -sequence_database_file
- id: sequence_database_type
  doc: "Specify type of sequence database (default: 'AA' valid: 'DNA', 'AA')"
  type: string
  inputBinding:
    prefix: -sequence_database_type
- id: search_file
  doc: "Only search a subset of the query spectra in the search file (valid formats:\
    \ 'txt', ' dat')"
  type: string
  inputBinding:
    prefix: -search_file
- id: params_file
  doc: "Read search options from file. All options set in the file will be overridden\
    \ by command-line options, if specified. (valid forma ts: 'params')"
  type: string
  inputBinding:
    prefix: -params_file
- id: precursor_mz_tolerance
  doc: "M/z (in Th) tolerance within which candidate entries are compared to the query.\
    \ Monoisotopic mass is assumed. (default: '3.0'  min: '0.0')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance
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
- SpectraSTSearchAdapter
