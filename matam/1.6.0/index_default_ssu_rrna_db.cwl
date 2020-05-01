#!/usr/bin/env cwl-runner

baseCommand:
- index_default_ssu_rrna_db.py
class: CommandLineTool
cwlVersion: v1.0
id: index_default_ssu_rrna_db.py
inputs:
- doc: Output dir. Default is $MATAM_DIR/db/
  id: ref_dir
  inputBinding:
    prefix: --ref_dir
  type: string
- doc: Maximum memory to use (in MBi). Default is 10000 MBi
  id: max_memory
  inputBinding:
    prefix: --max_memory
  type: long
