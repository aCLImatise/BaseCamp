class: CommandLineTool
id: igdiscover_rename.cwl
inputs:
- id: in_no_sort
  doc: Do not sort sequences by name
  type: boolean
  inputBinding:
    prefix: --no-sort
- id: in_not_found
  doc: "Append this text to the record name when the sequence\nwas not found in the\
    \ template. Default: ' (not found)'"
  type: string
  inputBinding:
    prefix: --not-found
- id: in_rename_from
  doc: "FASTA template file with correctly named sequences. If\na sequence in the\
    \ target file is identical to one in\nthe template, it is assigned the name of\
    \ the sequence\nin the template."
  type: File
  inputBinding:
    prefix: --rename-from
- id: in_order_by
  doc: "FASTA template that contains genes in the desired\norder. If a name contains\
    \ a \"*\" (asterisk), only the\npreceding part is used. Thus, VH4-4*01 and VH4-4*02\n\
    are equivalent.\n"
  type: long
  inputBinding:
    prefix: --order-by
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- rename
