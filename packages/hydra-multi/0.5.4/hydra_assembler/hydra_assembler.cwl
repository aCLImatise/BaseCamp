class: CommandLineTool
id: hydra_assembler.cwl
inputs:
- id: in_config
  doc: "Configuration file.\nCol 1. Sample Id (string)\nCol 2. Mapping file (path/file)\n\
    Col 3. Expected insert size (integer)\nCol 4. Variance (integer)\nCol 5. Num.\
    \ variances (integer)"
  type: boolean?
  inputBinding:
    prefix: -config
- id: in_routed
  doc: A single routed chr/chr/strand/strand file from HydraRouter.
  type: boolean?
  inputBinding:
    prefix: -routed
- id: in_max_mappings
  doc: Maximum number of mappings in a cluster before Hydra will "punt".
  type: boolean?
  inputBinding:
    prefix: -maxMappings
- id: in_crumbs
  doc: Hydra will leave temporary files.
  type: boolean?
  inputBinding:
    prefix: --crumbs
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    prefix: -out
- id: in_hydra
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- hydra-assembler
