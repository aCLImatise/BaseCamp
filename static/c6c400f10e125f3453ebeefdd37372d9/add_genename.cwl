class: CommandLineTool
id: add_genename.cwl
inputs:
- id: in_directory_output_gtf
  doc: ': the directory for output gtf files (default: ./)'
  type: Directory?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_output_gtf
  doc: ': the directory for output gtf files (default: ./)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_output_gtf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- add-genename
