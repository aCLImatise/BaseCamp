class: CommandLineTool
id: calib_cons.cwl
inputs:
- id: in_fast_q
  doc: "(type: space separated string list;\nREQUIRED paramter;\ncan be set multiple\
    \ times like in Example 2)"
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_output_prefix
  doc: "(type: space separated string list;\nREQUIRED paramter;\ncan be set multiple\
    \ times like in Example 2;\nmust be same size as fastq list)"
  type: boolean?
  inputBinding:
    prefix: --output-prefix
- id: in_cluster
  doc: "(string;\nREQUIRED paramter)"
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_threads
  doc: "(positive integer;\ndefault: 4)"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_min_reads_per_cluster
  doc: "(positive integer;\ndefault: 2)"
  type: boolean?
  inputBinding:
    prefix: --min-reads-per-cluster
- id: in_parameter
  doc: ''
  type: string?
  inputBinding:
    prefix: --PARAMETER
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- calib_cons
