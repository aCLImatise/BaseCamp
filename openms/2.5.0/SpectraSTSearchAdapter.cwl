#!/usr/bin/env cwl-runner

baseCommand:
- SpectraSTSearchAdapter
class: CommandLineTool
cwlVersion: v1.0
id: spectrastsearchadapter
inputs:
- doc: '*                                                            Path to the SpectraST
    executable to use; may be empty if the executable is globally available.'
  id: executable
  inputBinding:
    prefix: -executable
  type: File
- doc: "[ <SearchFileName2> ... <SearchFileNameN> ]*  File names(s) of spectra to\
    \ be searched. (valid formats: 'mzML', 'mzXML', 'mzData', 'dta', 'msp')"
  id: spectra_files
  inputBinding:
    prefix: -spectra_files
  type: string
- doc: "[ <OutputFileName2> ... <OutputFileNameN> ]*       Output files. Make sure\
    \ to specify one output file for each input file (valid formats: 'txt', 'tsv',\
    \ 'pep.xml', 'xml', 'pepXML',  'html')"
  id: output_files
  inputBinding:
    prefix: -output_files
  type: string
- doc: ".splib*                                                Specify library file.\
    \ (valid formats: 'splib')"
  id: library_file
  inputBinding:
    prefix: -library_file
  type: string
- doc: ".fasta                                The sequence database. (valid formats:\
    \ 'fasta')"
  id: sequence_database_file
  inputBinding:
    prefix: -sequence_database_file
  type: string
- doc: "Specify type of sequence database (default: 'AA' valid: 'DNA', 'AA')"
  id: sequence_database_type
  inputBinding:
    prefix: -sequence_database_type
  type: string
- doc: "Only search a subset of the query spectra in the search file (valid formats:\
    \ 'txt', ' dat')"
  id: search_file
  inputBinding:
    prefix: -search_file
  type: string
- doc: "Read search options from file. All options set in the file will be overridden\
    \ by command-line options, if specified. (valid forma ts: 'params')"
  id: params_file
  inputBinding:
    prefix: -params_file
  type: string
- doc: "M/z (in Th) tolerance within which candidate entries are compared to the query.\
    \ Monoisotopic mass is assumed. (default: '3.0'  min: '0.0')"
  id: precursor_mz_tolerance
  inputBinding:
    prefix: -precursor_mz_tolerance
  type: string
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
