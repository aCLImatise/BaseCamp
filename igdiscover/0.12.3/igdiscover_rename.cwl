class: CommandLineTool
id: igdiscover_rename.cwl
inputs:
- id: no_sort
  doc: Do not sort sequences by name
  type: boolean
  inputBinding:
    prefix: --no-sort
- id: not_found
  doc: "Append this text to the record name when the sequence was not found in the\
    \ template. Default: ' (not found)'"
  type: string
  inputBinding:
    prefix: --not-found
- id: rename_from
  doc: FASTA template file with correctly named sequences. If a sequence in the target
    file is identical to one in the template, it is assigned the name of the sequence
    in the template.
  type: string
  inputBinding:
    prefix: --rename-from
- id: order_by
  doc: FASTA template that contains genes in the desired order. If a name contains
    a "*" (asterisk), only the preceding part is used. Thus, VH4-4*01 and VH4-4*02
    are equivalent.
  type: string
  inputBinding:
    prefix: --order-by
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- rename
