class: CommandLineTool
id: je_demultiplex_illu.cwl
inputs:
- id: or
  doc: sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- demultiplex-illu
