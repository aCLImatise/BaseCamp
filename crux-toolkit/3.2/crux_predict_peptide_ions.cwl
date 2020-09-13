class: CommandLineTool
id: ../../../crux_predict_peptide_ions.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- predict-peptide-ions
