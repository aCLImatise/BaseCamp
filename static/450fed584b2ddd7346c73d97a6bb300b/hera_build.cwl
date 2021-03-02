class: CommandLineTool
id: hera_build.cwl
inputs:
- id: in_fast_a
  doc: input reference genome fasta file
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_gtf
  doc: input reference annotation gtf file
  type: boolean?
  inputBinding:
    prefix: --gtf
- id: in_outdir
  doc: output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_full_index
  doc: '0: none, 1: index full genome'
  type: boolean?
  inputBinding:
    prefix: --full_index
- id: in_gr_ch_three_eight
  doc: 'is input fasta GRCh38? 0: No, 1: Yes'
  type: boolean?
  inputBinding:
    prefix: --grch38
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- hera_build
