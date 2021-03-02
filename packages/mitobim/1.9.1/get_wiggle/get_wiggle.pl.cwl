class: CommandLineTool
id: get_wiggle.pl.cwl
inputs:
- id: in_prefix
  doc: <string>        Prefix for MIRA assembly files (mandatory), expects to find
    prefix.unpadded.fasta and prefix.padded.fasta
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_wiggle
  doc: <string>        Wiggle file (optional), if not specified script will expect
    to find a file *.wig in the same directory as assembly results
  type: boolean?
  inputBinding:
    prefix: --wiggle
- id: in_options
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
  dockerPull: quay.io/biocontainers/mitobim:1.9.1--0
cwlVersion: v1.1
baseCommand:
- get_wiggle.pl
