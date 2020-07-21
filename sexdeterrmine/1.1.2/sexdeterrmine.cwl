class: CommandLineTool
id: ../../../sexdeterrmine.cwl
inputs:
- id: input
  doc: The input samtools depth file. Omit to read from stdin.
  type: string
  inputBinding:
    prefix: --Input
- id: sample_list
  doc: A list of samples/bams that were in the depth file. One per line. Should be
    in the order of the samtools depth output.
  type: string
  inputBinding:
    prefix: --SampleList
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- sexdeterrmine
