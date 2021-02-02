class: CommandLineTool
id: run_mysql_server_singularity.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_mysql_server_singularity.sh
