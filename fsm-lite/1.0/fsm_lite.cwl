class: CommandLineTool
id: fsm_lite.cwl
inputs:
- id: list
  doc: Text file that lists all input files as whitespace-separated pairs  <data-name>
    <data-filename> where <data-name> is unique identifier (without whitespace) and
    <data-filename> is full path to each input file. Default data file format is FASTA
    (uncompressed).
  type: File
  inputBinding:
    prefix: --list
- id: tmp
  doc: Store temporary index data
  type: File
  inputBinding:
    prefix: --tmp
- id: min
  doc: Minimum length to report (default 9)
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: Maximum length to report (default 100)
  type: long
  inputBinding:
    prefix: --max
- id: freq
  doc: Minimum frequency per input file to report (default 1)
  type: long
  inputBinding:
    prefix: --freq
- id: min_supp
  doc: Minimum number of input files with support to report (default 2)
  type: long
  inputBinding:
    prefix: --minsupp
- id: max_supp
  doc: Maximum number of input files with support to report (default inf)
  type: long
  inputBinding:
    prefix: --maxsupp
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- fsm-lite
