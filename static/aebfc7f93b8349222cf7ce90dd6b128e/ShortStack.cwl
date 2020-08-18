class: CommandLineTool
id: ../../../ShortStack.cwl
inputs:
- id: loci_file_dot
  doc: the value for --total_primaries to make a single locus run fast.
  type: string
  inputBinding:
    prefix: --locifile.
outputs: []
cwlVersion: v1.1
baseCommand:
- ShortStack
