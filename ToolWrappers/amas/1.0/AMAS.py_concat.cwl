class: CommandLineTool
id: AMAS.py_concat.cwl
inputs:
- id: in_concat_part
  doc: "File name for the concatenated alignment partitions.\nDefault: 'partitions.txt'"
  type: File?
  inputBinding:
    prefix: --concat-part
- id: in_concat_out
  doc: "File name for the concatenated alignment. Default:\n'concatenated.out'"
  type: File?
  inputBinding:
    prefix: --concat-out
- id: in_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_part_format
  doc: "Format of the partitions file. Default: 'unspecified'"
  type: string?
  inputBinding:
    prefix: --part-format
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
- id: out_concat_out
  doc: "File name for the concatenated alignment. Default:\n'concatenated.out'"
  type: File?
  outputBinding:
    glob: $(inputs.in_concat_out)
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
- concat
