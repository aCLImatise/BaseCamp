class: CommandLineTool
id: run_mysql_server_docker.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_mysql_server_docker.sh
