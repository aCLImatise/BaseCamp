class: CommandLineTool
id: hgGoldGapGl.cwl
inputs:
- id: no_gl
  doc: "'t do gl bits"
  type: boolean
  inputBinding:
    prefix: -noGl
- id: chrom
  doc: a single chromosome.  Don't delete old tables.
  type: string
  inputBinding:
    prefix: -chrom
- id: chromosomes
  doc: are named in chrom.lst (1, 2, ...)
  type: string
  inputBinding:
    prefix: '- chromosomes'
- id: no_load
  doc: load tables, leave SQL files instead.
  type: string
  inputBinding:
    prefix: -noLoad
- id: verbose
  doc: ==2 brief information and SQL table create statements
  type: string
  inputBinding:
    prefix: -verbose
- id: n
  doc: ==3 show all gaps
  type: boolean
  inputBinding:
    prefix: '- n'
outputs: []
cwlVersion: v1.1
baseCommand:
- hgGoldGapGl
