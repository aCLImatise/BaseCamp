class: CommandLineTool
id: DRAM_v.py_distill.cwl
inputs:
- id: in_input_file
  doc: 'Annotations path (default: None)'
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_output_dir
  doc: 'Directory to write summarized genomes (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_group_by_column
  doc: "Column from annotations to group as VGF units\n(default: scaffold)"
  type: string?
  inputBinding:
    prefix: --groupby_column
- id: in_max_auxiliary_score
  doc: "Maximum auxiliary score to consider gene as potential\nAMG (default: 3)"
  type: long?
  inputBinding:
    prefix: --max_auxiliary_score
- id: in_remove_transposons
  doc: "Do not consider genes on scaffolds with transposons as\npotential AMGs (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --remove_transposons
- id: in_remove_fs
  doc: "Do not consider genes near ends of scaffolds as\npotential AMGs (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --remove_fs
- id: in_custom_distillate
  doc: "Custom distillate form to add your own modules\n(default: None)\n"
  type: string?
  inputBinding:
    prefix: --custom_distillate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.2.1--py_0
cwlVersion: v1.1
baseCommand:
- DRAM-v.py
- distill
