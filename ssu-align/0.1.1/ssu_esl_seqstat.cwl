class: CommandLineTool
id: ../../../ssu_esl_seqstat.cwl
inputs:
- id: report_persequence_info
  doc: ': report per-sequence info line, not just a summary'
  type: boolean
  inputBinding:
    prefix: -a
- id: count_report_composition
  doc: ': count and report residue composition'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: rna
  doc: ': specify that <seqfile> contains RNA sequence'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': specify that <seqfile> contains DNA sequence'
  type: boolean
  inputBinding:
    prefix: --dna
- id: amino
  doc: ': specify that <seqfile> contains protein sequence'
  type: boolean
  inputBinding:
    prefix: --amino
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-seqstat
