class: CommandLineTool
id: oncogemini_annotate.cwl
inputs:
- id: in_tabixed_bed_file
  doc: The TABIX'ed BED file containing the annotations
  type: File
  inputBinding:
    prefix: -f
- id: in_names_added_thevariant
  doc: "The name(s) of the BED column(s) to be added to the\nvariant table.If the\
    \ input file is a VCF, then this is\nthe name of the info field to pull."
  type: File
  inputBinding:
    prefix: -c
- id: in_how_should_annotation
  doc: How should the annotation file be used? (def. extract)
  type: string
  inputBinding:
    prefix: -a
- id: in_columns_extract_information
  doc: "Column(s) to extract information from for list\nannotations.If the input is\
    \ VCF, then this defaults to\nthe fields specified in `-c`."
  type: string
  inputBinding:
    prefix: -e
- id: in_data_types_should
  doc: "What data type(s) should be used to represent the new\nvalues in the database?\
    \ Any of {integer, float, text}"
  type: double
  inputBinding:
    prefix: -t
- id: in_operations_apply_values
  doc: "Operation(s) to apply to the extract column values in\nthe event that a variant\
    \ overlaps multiple annotations\nin your annotation file (-f).Any of {sum, mean,\n\
    median, min, max, mode, list, uniq_list, first, last}"
  type: long
  inputBinding:
    prefix: -o
- id: in_region_only
  doc: "If set, only region coordinates will be considered\nwhen annotating variants.The\
    \ default is to annotate\nusing region coordinates as well as REF and ALT\nvariant\
    \ valuesThis option is only valid if annotation\nis a VCF file\n"
  type: boolean
  inputBinding:
    prefix: --region-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- annotate
