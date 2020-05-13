class: CommandLineTool
id: gaas_synplot.pl.cwl
inputs:
- id: plot_only
  doc: 'Flag: Draw plot only. Requires precomputed intermediate files with same file
    name prefix as supplied to -o parameter above.'
  type: boolean
  inputBinding:
    prefix: --plotonly
- id: gen_code
  doc: 'Genetic code for a.a. sequence translation. (Default: 4)'
  type: long
  inputBinding:
    prefix: --gencode
- id: cds
  doc: 'How to depict CDS direction. Allowed values: color, arrow. No quotation marks.
    (Default: color)'
  type: string
  inputBinding:
    prefix: --cds
- id: color_id
  doc: Color corresponding to max value in color scale, used to show percentage ID
    for two CDSs connected by a stripe in the synteny plot.
  type: string
  inputBinding:
    prefix: --color_id
- id: color_cds_f
  doc: Color for forward-directed CDSs (if "--cds color" specified), or color of arrow
    (if "--cds arrow" specified).
  type: string
  inputBinding:
    prefix: --color_cds_f
- id: color_cds_r
  doc: Color for reverse-directed CDSs (if "--cds color" specified, otherwise ignored)
  type: string
  inputBinding:
    prefix: --color_cds_r
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_synplot.pl
