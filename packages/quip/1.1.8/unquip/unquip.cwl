class: CommandLineTool
id: unquip.cwl
inputs:
- id: in_input
  doc: input format (guessed by default)
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: output format (guessed by default)
  type: string?
  inputBinding:
    prefix: --output
- id: in_decompress
  doc: decompress (equivalent to '--input=quip')
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_reference
  doc: "use a reference sequence (in the FASTA format)\nto compress aligned reads"
  type: string?
  inputBinding:
    prefix: --reference
- id: in_assembly
  doc: "use de novo assembly to potentially increase\ncompression at the cost of being\
    \ somewhat slower."
  type: boolean?
  inputBinding:
    prefix: --assembly
- id: in_assembly_n
  doc: "assemble the first n reads (implies --assembly)\n(default: 2500000)"
  type: long?
  inputBinding:
    prefix: --assembly-n
- id: in_test
  doc: test compressed file integrity
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_list
  doc: list total number of reads and bases
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_stdout
  doc: write on standard output
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_force
  doc: allow overwriting of output files, etc
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: output a great deal of useless information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quip
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/quip:1.1.8--hed695b0_0
cwlVersion: v1.1
baseCommand:
- unquip
