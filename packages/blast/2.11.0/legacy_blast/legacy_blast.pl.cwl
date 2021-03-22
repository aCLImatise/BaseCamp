class: CommandLineTool
id: legacy_blast.pl.cwl
inputs:
- id: in_path
  doc: "Use the provided path as the location of the BLAST binaries to\nexecute/print\
    \ (default: /usr/bin)."
  type: boolean?
  inputBinding:
    prefix: --path
- id: in_print_only
  doc: "Print the equivalent command line option instead of running the\ncommand (default:\
    \ false)."
  type: boolean?
  inputBinding:
    prefix: --print_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0
cwlVersion: v1.1
baseCommand:
- legacy_blast.pl
