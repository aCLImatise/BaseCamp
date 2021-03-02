class: CommandLineTool
id: svtools_prune.cwl
inputs:
- id: in_distance
  doc: "max separation distance (bp) of adjacent loci in\ncluster [50]"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_eval_param
  doc: "evaluating parameter for choosing best bedpe in a\ncluster(e.g. af=AlleleFrequency\
    \ default:af)"
  type: string?
  inputBinding:
    prefix: --eval-param
- id: in_is_sorted
  doc: "specify if an input file is sorted. Sort with svtools\nbedpesort. (default=False)"
  type: boolean?
  inputBinding:
    prefix: --is-sorted
- id: in_output
  doc: 'output bedpe to write (default: stdout)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File?
  inputBinding:
    prefix: --tempdir
- id: in_stdin_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtools
- prune
