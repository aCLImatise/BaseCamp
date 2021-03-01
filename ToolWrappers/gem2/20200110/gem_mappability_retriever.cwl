class: CommandLineTool
id: gem_mappability_retriever.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-mappability-retriever
