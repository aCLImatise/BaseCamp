class: CommandLineTool
id: tandem2pin.cwl
inputs:
- id: target_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: decoy_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: enzyme
  doc: Type of enzyme  "no_enzyme","elastase","pepsin","proteinasek","therm olysin","chymotrypsin","lys-n","lys-c","arg-c","asp-
    n","glu-c","trypsin" default="trypsin"
  type: boolean
  inputBinding:
    prefix: --enzyme
- id: max_mass
  doc: Maximum peptide mass allowed used in the search  engine (default 6000)(Only
    valid when using option  -F).
  type: boolean
  inputBinding:
    prefix: --max-mass
outputs: []
cwlVersion: v1.1
baseCommand:
- tandem2pin
