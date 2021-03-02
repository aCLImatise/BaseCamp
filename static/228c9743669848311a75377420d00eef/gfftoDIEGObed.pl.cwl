class: CommandLineTool
id: gfftoDIEGObed.pl.cwl
inputs:
- id: in_gff_file_eg
  doc: gff file e.g. from ENSMBL
  type: File?
  inputBinding:
    prefix: -g
- id: in_output_file_name
  doc: output file name (default:annotation_DIEGO.bed)
  type: File?
  inputBinding:
    prefix: -o
- id: in_what_used_gene
  doc: 'what is used as genes (default: gene)'
  type: string?
  inputBinding:
    prefix: -w
- id: in_help_message
  doc: help message
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name (default:annotation_DIEGO.bed)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- gfftoDIEGObed.pl
