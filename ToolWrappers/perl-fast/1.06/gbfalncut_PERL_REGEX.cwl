class: CommandLineTool
id: gbfalncut_PERL_REGEX.cwl
inputs:
- id: in_gbf_aln_cut
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genbank_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_perl_regex
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- PERL-REGEX
