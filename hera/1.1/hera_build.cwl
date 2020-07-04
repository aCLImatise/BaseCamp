class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hera_build.cwl
inputs:
- id: fast_a
  doc: input reference genome fasta file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: gtf
  doc: input reference annotation gtf file
  type: boolean
  inputBinding:
    prefix: --gtf
- id: outdir
  doc: output directory
  type: boolean
  inputBinding:
    prefix: --outdir
- id: full_index
  doc: '0: none, 1: index full genome'
  type: boolean
  inputBinding:
    prefix: --full_index
- id: gr_ch_three_eight
  doc: 'is input fasta GRCh38? 0: No, 1: Yes'
  type: boolean
  inputBinding:
    prefix: --grch38
outputs: []
cwlVersion: v1.1
baseCommand:
- hera_build
