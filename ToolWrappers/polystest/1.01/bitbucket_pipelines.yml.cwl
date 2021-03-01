class: CommandLineTool
id: bitbucket_pipelines.yml.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bitbucket-pipelines.yml
