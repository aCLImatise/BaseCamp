class: CommandLineTool
id: index_default_ssu_rrna_db.py.cwl
inputs:
- id: in_ref_dir
  doc: Output dir. Default is $MATAM_DIR/db/
  type: File?
  inputBinding:
    prefix: --ref_dir
- id: in_max_memory
  doc: "Maximum memory to use (in MBi). Default is 10000 MBi\n"
  type: long?
  inputBinding:
    prefix: --max_memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- index_default_ssu_rrna_db.py
