class: CommandLineTool
id: bamleftalign.cwl
inputs:
- id: fast_a_reference
  doc: FASTA reference file to use for realignment (required)
  type: File
  inputBinding:
    prefix: --fasta-reference
- id: debug
  doc: Print debugging information about realignment process
  type: boolean
  inputBinding:
    prefix: --debug
- id: suppress_output
  doc: Don't write BAM output stream (for debugging)
  type: boolean
  inputBinding:
    prefix: --suppress-output
- id: max_iterations
  doc: Iterate the left-realignment no more than this many times
  type: string
  inputBinding:
    prefix: --max-iterations
- id: compressed
  doc: Write compressed BAM on stdout, default is uncompressed
  type: boolean
  inputBinding:
    prefix: --compressed
outputs: []
cwlVersion: v1.1
baseCommand:
- bamleftalign
