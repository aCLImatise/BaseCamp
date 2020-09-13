class: CommandLineTool
id: ../../../hera_build.cwl
inputs:
- id: in_full_index
  doc: ''
  type: long
  inputBinding:
    prefix: --full_index
- id: in_gr_ch_three_eight
  doc: ''
  type: long
  inputBinding:
    prefix: --grch38
- id: in_fast_a
  doc: input reference genome fasta file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_gtf
  doc: input reference annotation gtf file
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_outdir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- hera_build
