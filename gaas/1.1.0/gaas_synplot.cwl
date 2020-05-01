#!/usr/bin/env cwl-runner

baseCommand:
- gaas_synplot.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_synplot.pl
inputs:
- doc: 'Flag: Draw plot only. Requires precomputed intermediate files with same file
    name prefix as supplied to -o parameter above.'
  id: plot_only
  inputBinding:
    prefix: --plotonly
  type: boolean
- doc: 'Genetic code for a.a. sequence translation. (Default: 4)'
  id: gen_code
  inputBinding:
    prefix: --gencode
  type: long
- doc: 'How to depict CDS direction. Allowed values: color, arrow. No quotation marks.
    (Default: color)'
  id: cds
  inputBinding:
    prefix: --cds
  type: string
- doc: Color corresponding to max value in color scale, used to show percentage ID
    for two CDSs connected by a stripe in the synteny plot.
  id: color_id
  inputBinding:
    prefix: --color_id
  type: string
- doc: Color for forward-directed CDSs (if "--cds color" specified), or color of arrow
    (if "--cds arrow" specified).
  id: color_cds_f
  inputBinding:
    prefix: --color_cds_f
  type: string
- doc: Color for reverse-directed CDSs (if "--cds color" specified, otherwise ignored)
  id: color_cds_r
  inputBinding:
    prefix: --color_cds_r
  type: string
