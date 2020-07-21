class: CommandLineTool
id: ../../../hgGoldGapGl.cwl
inputs:
- id: no_gl
  doc: "- don't do gl bits"
  type: boolean
  inputBinding:
    prefix: -noGl
- id: chrom
  doc: "- just do a single chromosome.  Don't delete old tables."
  type: string
  inputBinding:
    prefix: -chrom
- id: chrom_lst
  doc: '- chromosomes subdirs are named in chrom.lst (1, 2, ...)'
  type: string
  inputBinding:
    prefix: -chromLst
- id: no_load
  doc: '- do not load tables, leave SQL files instead.'
  type: boolean
  inputBinding:
    prefix: -noLoad
- id: verbose
  doc: '- n==2 brief information and SQL table create statements - n==3 show all gaps'
  type: string
  inputBinding:
    prefix: -verbose
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gs_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: oo_subdir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hgGoldGapGl
