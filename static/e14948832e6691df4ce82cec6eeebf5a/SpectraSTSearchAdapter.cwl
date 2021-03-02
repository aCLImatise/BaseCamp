class: CommandLineTool
id: SpectraSTSearchAdapter.cwl
inputs:
- id: in_executable
  doc: '*                                                            Path to the SpectraST
    executable to use; may be empty if the executable is globally available.'
  type: File?
  inputBinding:
    prefix: -executable
- id: in_spectra_files
  doc: "[ <SearchFileName2> ... <SearchFileNameN> ]*  File names(s) of spectra to\
    \ be searched. (valid formats: 'mzML', 'mzXML', 'mzData', 'mgf', 'dta', 'msp')"
  type: File?
  inputBinding:
    prefix: -spectra_files
- id: in_output_files
  doc: "[ <OutputFileName2> ... <OutputFileNameN> ]*       Output files. Make sure\
    \ to specify one output file for each input file (valid formats: 'txt', 'tsv',\
    \ 'xml', 'pepXML', 'html')"
  type: File?
  inputBinding:
    prefix: -output_files
- id: in_library_file
  doc: ".splib*                                                Specify library file.\
    \ (valid formats: 'splib')"
  type: File?
  inputBinding:
    prefix: -library_file
- id: in_sequence_database_file
  doc: ".fasta                                The sequence database. (valid formats:\
    \ 'fasta')"
  type: string?
  inputBinding:
    prefix: -sequence_database_file
- id: in_sequence_database_type
  doc: "Specify type of sequence database (default: 'AA' valid: 'DNA', 'AA')"
  type: string?
  inputBinding:
    prefix: -sequence_database_type
- id: in_search_file
  doc: "Only search a subset of the query spectra in the search file (valid formats:\
    \ 'txt', ' dat')"
  type: File?
  inputBinding:
    prefix: -search_file
- id: in_params_file
  doc: "Read search options from file. All options set in the file will be overridden\
    \ by command-line options, if specified. (valid formats: 'params')"
  type: File?
  inputBinding:
    prefix: -params_file
- id: in_precursor_mz_tolerance
  doc: "M/z (in Th) tolerance within which candidate entries are compared to the query.\
    \ Monoisotopic mass is assumed. (default: '3.0' min: '0.0')"
  type: long?
  inputBinding:
    prefix: -precursor_mz_tolerance
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
- id: out_output_files
  doc: "[ <OutputFileName2> ... <OutputFileNameN> ]*       Output files. Make sure\
    \ to specify one output file for each input file (valid formats: 'txt', 'tsv',\
    \ 'xml', 'pepXML', 'html')"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_files)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- SpectraSTSearchAdapter
