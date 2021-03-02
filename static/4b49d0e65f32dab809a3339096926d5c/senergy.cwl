class: CommandLineTool
id: senergy.cwl
inputs:
- id: in_etot
  doc: EKtot       EPtot        BOND       ANGLE       DIHED      1-4 NB     1-4 EEL     VDWAALS       EELEC      EHBOND  CONSTRAINT      EAMBER
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- senergy
