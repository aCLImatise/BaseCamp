class: CommandLineTool
id: hgGoldGapGl.cwl
inputs:
- id: in_no_gl
  doc: "- don't do gl bits"
  type: boolean
  inputBinding:
    prefix: -noGl
- id: in_chrom
  doc: "- just do a single chromosome.  Don't delete old tables."
  type: string
  inputBinding:
    prefix: -chrom
- id: in_chrom_lst
  doc: '- chromosomes subdirs are named in chrom.lst (1, 2, ...)'
  type: long
  inputBinding:
    prefix: -chromLst
- id: in_no_load
  doc: '- do not load tables, leave SQL files instead.'
  type: boolean
  inputBinding:
    prefix: -noLoad
- id: in_verbose
  doc: "- n==2 brief information and SQL table create statements\n- n==3 show all\
    \ gaps"
  type: long
  inputBinding:
    prefix: -verbose
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gs_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_oo_subdir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgGoldGapGl
