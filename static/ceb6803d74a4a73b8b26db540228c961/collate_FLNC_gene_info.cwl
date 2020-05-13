class: CommandLineTool
id: collate_FLNC_gene_info.py.cwl
inputs:
- id: group_filename
  doc: Collapse .group.txt
  type: string
  inputBinding:
    position: 0
- id: csv_filename
  doc: Trimmed UMI/BC CSV info
  type: string
  inputBinding:
    position: 1
- id: class_filename
  doc: SQANTI classification.txt
  type: string
  inputBinding:
    position: 2
- id: output_filename
  doc: Output filename
  type: string
  inputBinding:
    position: 3
- id: on_target_filename
  doc: (Optional) on target information text
  type: string
  inputBinding:
    prefix: --ontarget_filename
- id: ded_up_orf_prefix
  doc: (Optional) dedup-ed ORF group prefix, must have <pre>.faa and <pre>.group.txt
  type: string
  inputBinding:
    prefix: --dedup_ORF_prefix
- id: no_extra_base
  doc: Drop all reads where there are extra bases
  type: boolean
  inputBinding:
    prefix: --no-extra-base
outputs: []
cwlVersion: v1.1
baseCommand:
- collate_FLNC_gene_info.py
