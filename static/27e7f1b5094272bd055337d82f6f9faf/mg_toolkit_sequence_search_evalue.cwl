class: CommandLineTool
id: mg_toolkit_sequence_search_evalue.cwl
inputs:
- id: in_seq_evalue_threshold
  doc: "Sequence E-value threshold. Accepted value 0 < x ≤ 10\n(default: 0.01)."
  type: double?
  inputBinding:
    prefix: --seq-evalue-threshold
- id: in_hit_evalue_threshold
  doc: "Hit E-value threshold. Accepted value 0 < x ≤ 10\n(default: 0.03)."
  type: double?
  inputBinding:
    prefix: --hit-evalue-threshold
- id: in_report_seq_evalue_threshold
  doc: "Sequence E-value threshold (reporting).Accepted value\n0 < x ≤ 10 (default:\
    \ 1)."
  type: long?
  inputBinding:
    prefix: --report-seq-evalue-threshold
- id: in_report_hit_evalue_threshold
  doc: "Hit E-value threshold (reporting). Accepted value 0 <\nx ≤ 10 (default: 1).\n"
  type: long?
  inputBinding:
    prefix: --report-hit-evalue-threshold
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
- evalue
