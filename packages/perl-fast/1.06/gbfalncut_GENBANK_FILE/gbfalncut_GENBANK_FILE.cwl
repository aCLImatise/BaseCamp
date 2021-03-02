class: CommandLineTool
id: gbfalncut_GENBANK_FILE.cwl
inputs:
- id: in_perl_regex
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
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- gbfalncut
- GENBANK-FILE
