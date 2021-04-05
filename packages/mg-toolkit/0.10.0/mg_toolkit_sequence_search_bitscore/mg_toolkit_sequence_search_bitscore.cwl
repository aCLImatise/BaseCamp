class: CommandLineTool
id: mg_toolkit_sequence_search_bitscore.cwl
inputs:
- id: in_seq_bit_score_threshold
  doc: "Sequence bit score threshold. Accepted values x > 0\n(default: 25)."
  type: long?
  inputBinding:
    prefix: --seq-bitscore-threshold
- id: in_hit_bit_score_threshold
  doc: "Hit bit score threshold. Accepted values x > 0\n(default: 23)."
  type: long?
  inputBinding:
    prefix: --hit-bitscore-threshold
- id: in_report_seq_bit_score_threshold
  doc: "Sequence E-value threshold (reporting). Accepted\nvalues x > 0 (default: 7)."
  type: long?
  inputBinding:
    prefix: --report-seq-bitscore-threshold
- id: in_report_hit_bit_score_threshold
  doc: "Hit E-value threshold (reporting). Accepted values x >\n0 (default: 5).\n"
  type: long?
  inputBinding:
    prefix: --report-hit-bitscore-threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mg-toolkit:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- mg-toolkit
- sequence_search
- bitscore
