class: CommandLineTool
id: esl_seqstat.cwl
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
- id: in_comp_tbl
  doc: ': alternative output: a table of residue compositions per seq'
  type: boolean?
  inputBinding:
    prefix: --comptbl
- id: in_seq_file
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
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- esl-seqstat
