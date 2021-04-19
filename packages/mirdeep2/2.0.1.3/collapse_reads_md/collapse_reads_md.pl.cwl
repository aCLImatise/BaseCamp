class: CommandLineTool
id: collapse_reads_md.pl.cwl
inputs:
- id: in_outputs_progress
  doc: outputs progress
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- collapse_reads_md.pl
