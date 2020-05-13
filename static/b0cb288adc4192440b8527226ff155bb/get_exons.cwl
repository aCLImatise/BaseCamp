class: CommandLineTool
id: get_exons.cwl
inputs:
- id: input_gene_list_file
  doc: A simple file with a gene name (usually Hugo Symbol) on each line
  type: string
  inputBinding:
    position: 0
- id: transcript_ds_config
  doc: Path to transcript datasource config file.
  type: string
  inputBinding:
    position: 1
- id: output_file_name
  doc: output path. Must be writable. Will overwrite existing files.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- get_exons
