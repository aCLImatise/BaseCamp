class: CommandLineTool
id: extracthifi.cwl
inputs:
- id: in_input_dot_bam
  doc: STR  Input CCS BAM.
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_bam
  doc: STR  Ouput HiFi BAM.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/extracthifi:1.0.0--0
cwlVersion: v1.1
baseCommand:
- extracthifi
