class: CommandLineTool
id: pyrpipe_diagnostic_command.cwl
inputs:
- id: in_report
  doc: Generate analysis report
  type: string
  inputBinding:
    position: 0
- id: in_shell
  doc: Generate all commands to shell (bash) script
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: Subcommand to run report, shell,benchmark,multiqc,test
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyrpipe:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- pyrpipe_diagnostic
- command
