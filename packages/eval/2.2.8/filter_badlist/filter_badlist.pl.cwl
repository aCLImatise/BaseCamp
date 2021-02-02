class: CommandLineTool
id: filter_badlist.pl.cwl
inputs:
- id: in_flag_fix_file
  doc: Flag to fix the file.
  type: boolean
  inputBinding:
    prefix: -f
- id: in_output_genes_list
  doc: Output those genes that are in the list.
  type: boolean
  inputBinding:
    prefix: -l
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_badlist.pl
