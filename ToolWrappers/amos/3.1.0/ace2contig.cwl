class: CommandLineTool
id: ace2contig.cwl
inputs:
- id: in_file
  doc: file
  type: File
  inputBinding:
    prefix: -i
- id: in_prefix_output_prefixcontig
  doc: prefix (output is <prefix>.contig)
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ace2contig
