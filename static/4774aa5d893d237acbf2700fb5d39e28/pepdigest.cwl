class: CommandLineTool
id: pepdigest.cwl
inputs:
- id: menu
  doc: 'menu       [1] Select number (Values: 1 (Trypsin); 2 (Lys-C); 3 (Arg-C); 4
    (Asp-N); 5 (V8-bicarb); 6 (V8-phosph); 7 (Chymotrypsin); 8 (CNBr))'
  type: boolean
  inputBinding:
    prefix: -menu
- id: mono
  doc: boolean    [N] Use monoisotopic weights
  type: boolean
  inputBinding:
    prefix: -mono
outputs: []
cwlVersion: v1.1
baseCommand:
- pepdigest
