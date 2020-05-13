class: CommandLineTool
id: ShortStack.cwl
inputs:
- id: loci_file
  doc: . Specify the value for --total_primaries to make a single locus run fast.
  type: boolean
  inputBinding:
    prefix: --locifile
outputs: []
cwlVersion: v1.1
baseCommand:
- ShortStack
