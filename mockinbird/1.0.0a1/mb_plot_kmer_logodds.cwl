class: CommandLineTool
id: ../../../mb_plot_kmer_logodds.cwl
inputs:
- id: in_km_er
  doc: kmer length
  type: long
  inputBinding:
    prefix: --kmer
- id: in_gff
  doc: remove PAR-CLIP sites overlapping with annotations
  type: string
  inputBinding:
    prefix: --gff
- id: in_key
  doc: set key that is used for PAR-CLIP site ordering
  type: string
  inputBinding:
    prefix: --key
- id: in_quantiles
  doc: "use quantiles for binarization instead of fixed bin\nsize. Note, if you have\
    \ a small number of bindng sites\nthe bins based on quantiles can overlap!"
  type: boolean
  inputBinding:
    prefix: --quantiles
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_keep_tmp_files
  doc: keep temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-logodds
