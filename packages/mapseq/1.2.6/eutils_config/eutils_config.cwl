class: CommandLineTool
id: eutils_config.cwl
inputs:
- id: in_prefix
  doc: show EUTILS installation prefix
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_libs
  doc: print library linking information
  type: boolean?
  inputBinding:
    prefix: --libs
- id: in_cxxflags
  doc: print pre-processor and compiler flags
  type: boolean?
  inputBinding:
    prefix: --cxxflags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0
cwlVersion: v1.1
baseCommand:
- eutils-config
