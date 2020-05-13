class: CommandLineTool
id: je_demultiplex.cwl
inputs:
- id: or
  doc: sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz
  type: string
  inputBinding:
    position: 0
- id: use
  doc: '=READ_1 (beginning of read from FASTQ_FILE_1) if only this read should be
    used '
  type: string
  inputBinding:
    prefix: '- use'
- id: use
  doc: '=READ_2 (beginning of read from FASTQ_FILE_2) if only this read should be
    used '
  type: string
  inputBinding:
    prefix: '- use'
- id: use
  doc: '=BOTH (beginning of both reads) if both should be used '
  type: string
  inputBinding:
    prefix: '- use'
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- demultiplex
