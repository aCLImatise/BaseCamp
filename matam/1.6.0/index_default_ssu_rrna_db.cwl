class: CommandLineTool
id: index_default_ssu_rrna_db.py.cwl
inputs:
- id: ref_dir
  doc: Output dir. Default is $MATAM_DIR/db/
  type: string
  inputBinding:
    prefix: --ref_dir
- id: max_memory
  doc: Maximum memory to use (in MBi). Default is 10000 MBi
  type: long
  inputBinding:
    prefix: --max_memory
outputs: []
cwlVersion: v1.1
baseCommand:
- index_default_ssu_rrna_db.py
