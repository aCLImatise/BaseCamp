class: CommandLineTool
id: bioformats_gff2bed.cwl
inputs:
- id: in_attributes_include_defaultnone
  doc: "[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]]\n\
    attributes to include to the output BED file (default:\nNone)"
  type: File
  inputBinding:
    prefix: -a
- id: in_name_tag
  doc: 'an attribute tag of a feature name (default: None)'
  type: string
  inputBinding:
    prefix: --name_tag
- id: in_missing_value
  doc: 'the missing tag value (default: NA)'
  type: string
  inputBinding:
    prefix: --missing_value
- id: in_genes
  doc: 'output a BED12 file of genes (default: False)'
  type: File
  inputBinding:
    prefix: --genes
- id: in_parent_tag
  doc: 'an attribute tag of exon genes (default: Parent)'
  type: string
  inputBinding:
    prefix: --parent_tag
- id: in_no_order_check
  doc: "do not check the order of GFF3 file records (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --no_order_check
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_gff_file
  doc: a GFF3 file
  type: string
  inputBinding:
    position: 0
- id: in_type
  doc: type of features to be processed
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: the output file in the BED format
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_attributes_include_defaultnone
  doc: "[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]]\n\
    attributes to include to the output BED file (default:\nNone)"
  type: File
  outputBinding:
    glob: $(inputs.in_attributes_include_defaultnone)
- id: out_genes
  doc: 'output a BED12 file of genes (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_genes)
cwlVersion: v1.1
baseCommand:
- bioformats
- gff2bed
