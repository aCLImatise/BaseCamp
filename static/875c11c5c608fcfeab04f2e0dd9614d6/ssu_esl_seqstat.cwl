class: CommandLineTool
id: ssu_esl_seqstat.cwl
inputs:
- id: in_report_persequence_line
  doc: ': report per-sequence info line, not just a summary'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_count_report_composition
  doc: ': count and report residue composition'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_rna
  doc: ': specify that <seqfile> contains RNA sequence'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': specify that <seqfile> contains DNA sequence'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_amino
  doc: ': specify that <seqfile> contains protein sequence'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_seq_file
  doc: ''
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
- ssu-esl-seqstat
