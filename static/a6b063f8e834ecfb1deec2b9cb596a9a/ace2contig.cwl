class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ace2contig.cwl
inputs:
- id: file
  doc: file
  type: string
  inputBinding:
    prefix: -i
- id: prefix_output_prefixcontig
  doc: prefix (output is <prefix>.contig)
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- ace2contig
