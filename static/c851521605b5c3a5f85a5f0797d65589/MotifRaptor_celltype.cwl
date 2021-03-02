class: CommandLineTool
id: MotifRaptor_celltype.cwl
inputs:
- id: in_snp_hit_with_seq
  doc: "need header and columns in this text file with\nsequence (CHR is only a number):\
    \ ID CHR POS REF ALT"
  type: long?
  inputBinding:
    prefix: --snp_hit_withseq
- id: in_snp_hit
  doc: "need header and columns in this text file (CHR is only\na number): ID CHR\
    \ POS"
  type: long?
  inputBinding:
    prefix: --snp_hit
- id: in_snp_non_hit
  doc: "need header and columns in this text file (CHR is only\na number): ID CHR\
    \ POS"
  type: long?
  inputBinding:
    prefix: --snp_non_hit
- id: in_workdir
  doc: Working directory
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_threads
  doc: "number of threads\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- celltype
