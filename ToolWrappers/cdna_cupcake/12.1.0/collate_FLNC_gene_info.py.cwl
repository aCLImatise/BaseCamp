class: CommandLineTool
id: collate_FLNC_gene_info.py.cwl
inputs:
- id: in_on_target_filename
  doc: (Optional) on target information text
  type: File
  inputBinding:
    prefix: --ontarget_filename
- id: in_ded_up_orf_prefix
  doc: "(Optional) dedup-ed ORF group prefix, must have\n<pre>.faa and <pre>.group.txt"
  type: string
  inputBinding:
    prefix: --dedup_ORF_prefix
- id: in_no_extra_base
  doc: Drop all reads where there are extra bases
  type: boolean
  inputBinding:
    prefix: --no-extra-base
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_group_filename
  doc: Collapse .group.txt
  type: string
  inputBinding:
    position: 1
- id: in_csv_filename
  doc: Trimmed UMI/BC CSV info
  type: string
  inputBinding:
    position: 2
- id: in_class_filename
  doc: SQANTI classification.txt
  type: string
  inputBinding:
    position: 3
- id: in_output_filename
  doc: Output filename
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- collate_FLNC_gene_info.py
