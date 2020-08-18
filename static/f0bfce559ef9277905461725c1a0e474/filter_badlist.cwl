class: CommandLineTool
id: ../../../filter_badlist.pl.cwl
inputs:
- id: flag_fix_file
  doc: Flag to fix the file.
  type: boolean
  inputBinding:
    prefix: -f
- id: output_genes_list
  doc: Output those genes that are in the list.
  type: boolean
  inputBinding:
    prefix: -l
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_badlist.pl
