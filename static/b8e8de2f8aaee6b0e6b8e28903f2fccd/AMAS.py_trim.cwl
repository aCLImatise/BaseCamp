class: CommandLineTool
id: AMAS.py_trim.cwl
inputs:
- id: in_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_trim_out
  doc: "File name for the trimmed alignment when providing a\nsingle file as input."
  type: File?
  inputBinding:
    prefix: --trim-out
- id: in_trim_fraction
  doc: "Columns in the alignments with occupancy lower than\nthis value will be removed.\
    \ Default: 0.6"
  type: double?
  inputBinding:
    prefix: --trim-fraction
- id: in_retain_only_parsimony_sites
  doc: "Only write parsimony informative columns in trimmed\nalignment Default: write\
    \ all columns"
  type: boolean?
  inputBinding:
    prefix: --retain-only-parsimony-sites
- id: in_check_align
  doc: 'Check if input sequences are aligned. Default: no'
  type: boolean?
  inputBinding:
    prefix: --check-align
- id: in_in_files
  doc: "Alignment files to be taken as input. You can specify\nmultiple files using\
    \ wildcards (e.g. --in-files\n*fasta)"
  type: string[]
  inputBinding:
    prefix: --in-files
- id: in_in_format
  doc: The format of input alignment
  type: string?
  inputBinding:
    prefix: --in-format
- id: in_data_type
  doc: "Type of data\n"
  type: string?
  inputBinding:
    prefix: --data-type
- id: in_check
  doc: -c CORES, --cores CORES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amas:1.0--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- AMAS.py
- trim
