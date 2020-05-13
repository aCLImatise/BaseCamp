class: CommandLineTool
id: bioformats_gff2bed.cwl
inputs:
- id: gff_file
  doc: a GFF3 file
  type: string
  inputBinding:
    position: 0
- id: type
  doc: type of features to be processed
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: the output file in the BED format
  type: string
  inputBinding:
    position: 2
- id: a
  doc: '[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]]
    attributes to include to the output BED file (default: None)'
  type: boolean
  inputBinding:
    prefix: -a
- id: name_tag
  doc: 'an attribute tag of a feature name (default: None)'
  type: string
  inputBinding:
    prefix: --name_tag
- id: missing_value
  doc: 'the missing tag value (default: NA)'
  type: string
  inputBinding:
    prefix: --missing_value
- id: genes
  doc: 'output a BED12 file of genes (default: False)'
  type: boolean
  inputBinding:
    prefix: --genes
- id: parent_tag
  doc: 'an attribute tag of exon genes (default: Parent)'
  type: string
  inputBinding:
    prefix: --parent_tag
- id: no_order_check
  doc: 'do not check the order of GFF3 file records (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_order_check
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- gff2bed
