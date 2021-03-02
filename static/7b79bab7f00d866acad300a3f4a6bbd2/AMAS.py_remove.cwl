class: CommandLineTool
id: AMAS.py_remove.cwl
inputs:
- id: in_tax_a_to_remove
  doc: Taxon/sequence names to be removed.
  type: string[]
  inputBinding:
    prefix: --taxa-to-remove
- id: in_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_out_prefix
  doc: "File name prefix for the concatenated alignment.\nDefault: 'reduced_'"
  type: File?
  inputBinding:
    prefix: --out-prefix
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
hints: []
cwlVersion: v1.1
baseCommand:
- AMAS.py
- remove
