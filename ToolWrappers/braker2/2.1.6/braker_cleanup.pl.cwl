class: CommandLineTool
id: braker_cleanup.pl.cwl
inputs:
- id: in_wdir
  doc: output directory of braker.pl job
  type: Directory?
  inputBinding:
    prefix: --wdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_wdir
  doc: output directory of braker.pl job
  type: Directory?
  outputBinding:
    glob: $(inputs.in_wdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- braker_cleanup.pl
