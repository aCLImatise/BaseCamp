class: CommandLineTool
id: ccs_kinetics_bystrandify.cwl
inputs:
- id: in_min_coverage
  doc: "INT   Specifies the minimum number of passes per strand (fn/rn) for creating\
    \ a strand-specific read.\n[1]"
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_in_dot_bam
  doc: FILE  Input BAM file
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_bam
  doc: FILE  Output BAM file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0
cwlVersion: v1.1
baseCommand:
- ccs-kinetics-bystrandify
