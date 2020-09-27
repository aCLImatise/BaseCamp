class: CommandLineTool
id: sketchy_utils_fx_time.cwl
inputs:
- id: in_fast_q
  doc: "Path to Fast{a,q} input file used in evaluation NOTE:\nThis argument is mutually\
    \ exclusive with  arguments:\n[index].  [required]"
  type: File
  inputBinding:
    prefix: --fastq
- id: in_index
  doc: "Path to input file read index from `sketchy utils fx-\nsort` NOTE: This argument\
    \ is mutually exclusive with\narguments: [fastx]."
  type: File
  inputBinding:
    prefix: --index
- id: in_evaluation
  doc: "Path to evaluation file containing predictions\n(data.tsv)"
  type: File
  inputBinding:
    prefix: --evaluation
- id: in_prefix
  doc: "Output prefix for time data: {prefix}.time.tsv\n[skecthy]"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_delta
  doc: "Compute time delta between 'first' read or start time\nof run !! GMT !! in\
    \ format: '20/11/20 16:20:00'\n[first]"
  type: long
  inputBinding:
    prefix: --delta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-time
