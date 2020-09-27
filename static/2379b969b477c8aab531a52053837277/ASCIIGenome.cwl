class: CommandLineTool
id: ASCIIGenome.cwl
inputs:
- id: in_region
  doc: ''
  type: string
  inputBinding:
    prefix: --region
- id: in_batch_file
  doc: ''
  type: File
  inputBinding:
    prefix: --batchFile
- id: in_input
  doc: "Input  files  to  be  displayed:  bam,  bed,  gtf,\nbigwig, bedgraph, etc"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ASCIIGenome
