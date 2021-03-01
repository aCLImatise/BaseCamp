class: CommandLineTool
id: bamleftalign.cwl
inputs:
- id: in_fast_a_reference
  doc: FASTA reference file to use for realignment (required)
  type: File?
  inputBinding:
    prefix: --fasta-reference
- id: in_debug
  doc: Print debugging information about realignment process
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_suppress_output
  doc: Don't write BAM output stream (for debugging)
  type: boolean?
  inputBinding:
    prefix: --suppress-output
- id: in_max_iterations
  doc: Iterate the left-realignment no more than this many times
  type: long?
  inputBinding:
    prefix: --max-iterations
- id: in_compressed
  doc: Write compressed BAM on stdout, default is uncompressed
  type: boolean?
  inputBinding:
    prefix: --compressed
- id: in_bam
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_data
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_stream
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/freebayes:1.3.5--py39hd2e4403_0
cwlVersion: v1.1
baseCommand:
- bamleftalign
