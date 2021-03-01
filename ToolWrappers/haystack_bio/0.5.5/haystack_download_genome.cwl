class: CommandLineTool
id: haystack_download_genome.cwl
inputs:
- id: in_name
  doc: 'genome name. Example: haystack_download_genome hg19.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- haystack_download_genome
