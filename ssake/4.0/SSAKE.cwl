class: CommandLineTool
id: SSAKE.cwl
inputs:
- id: i
  doc: (de novo) assembly  i.e Targets used to recruit reads for de novo assembly,
    not guide/seed reference-based assemblies (-i 1 = yes (default), 0 = no, optional)
  type: string
  inputBinding:
    prefix: -i
- id: j
  doc: sequence word size to hash (default -j 15)
  type: string
  inputBinding:
    prefix: -j
- id: u
  doc: read space restriction to seeds while -s option in use (-u 1 = yes, default
    = no, optional)
  type: string
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- SSAKE
