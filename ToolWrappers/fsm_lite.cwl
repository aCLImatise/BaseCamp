class: CommandLineTool
id: fsm_lite.cwl
inputs:
- id: in_list
  doc: "Text file that lists all input files as whitespace-separated pairs\n<data-name>\
    \ <data-filename>\nwhere <data-name> is unique identifier (without whitespace)\n\
    and <data-filename> is full path to each input file.\nDefault data file format\
    \ is FASTA (uncompressed)."
  type: File
  inputBinding:
    prefix: --list
- id: in_tmp
  doc: Store temporary index data
  type: File
  inputBinding:
    prefix: --tmp
- id: in_min
  doc: Minimum length to report (default 9)
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: Maximum length to report (default 100)
  type: long
  inputBinding:
    prefix: --max
- id: in_freq
  doc: Minimum frequency per input file to report (default 1)
  type: long
  inputBinding:
    prefix: --freq
- id: in_min_supp
  doc: Minimum number of input files with support to report (default 2)
  type: long
  inputBinding:
    prefix: --minsupp
- id: in_max_supp
  doc: Maximum number of input files with support to report (default inf)
  type: long
  inputBinding:
    prefix: --maxsupp
- id: in_verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fsm-lite
