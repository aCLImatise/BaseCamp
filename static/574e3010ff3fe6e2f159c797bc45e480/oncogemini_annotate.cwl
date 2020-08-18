class: CommandLineTool
id: ../../../oncogemini_annotate.cwl
inputs:
- id: tabixed_bed_file
  doc: The TABIX'ed BED file containing the annotations
  type: string
  inputBinding:
    prefix: -f
- id: names_bed_columns
  doc: The name(s) of the BED column(s) to be added to the variant table.If the input
    file is a VCF, then this is the name of the info field to pull.
  type: string
  inputBinding:
    prefix: -c
- id: how_should_annotation
  doc: How should the annotation file be used? (def. extract)
  type: string
  inputBinding:
    prefix: -a
- id: columns_extract_information
  doc: Column(s) to extract information from for list annotations.If the input is
    VCF, then this defaults to the fields specified in `-c`.
  type: string
  inputBinding:
    prefix: -e
- id: data_types_should
  doc: What data type(s) should be used to represent the new values in the database?
    Any of {integer, float, text}
  type: string
  inputBinding:
    prefix: -t
- id: operations_apply_extract
  doc: Operation(s) to apply to the extract column values in the event that a variant
    overlaps multiple annotations in your annotation file (-f).Any of {sum, mean,
    median, min, max, mode, list, uniq_list, first, last}
  type: string
  inputBinding:
    prefix: -o
- id: region_only
  doc: If set, only region coordinates will be considered when annotating variants.The
    default is to annotate using region coordinates as well as REF and ALT variant
    valuesThis option is only valid if annotation is a VCF file
  type: boolean
  inputBinding:
    prefix: --region-only
- id: db
  doc: The name of the database to be updated.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oncogemini
- annotate
