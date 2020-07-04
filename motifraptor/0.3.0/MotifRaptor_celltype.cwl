class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MotifRaptor_celltype.cwl
inputs:
- id: snp_hit_with_seq
  doc: 'need header and columns in this text file with sequence (CHR is only a number):
    ID CHR POS REF ALT'
  type: string
  inputBinding:
    prefix: --snp_hit_withseq
- id: snp_hit
  doc: 'need header and columns in this text file (CHR is only a number): ID CHR POS'
  type: string
  inputBinding:
    prefix: --snp_hit
- id: snp_non_hit
  doc: 'need header and columns in this text file (CHR is only a number): ID CHR POS'
  type: string
  inputBinding:
    prefix: --snp_non_hit
- id: workdir
  doc: Working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- celltype
