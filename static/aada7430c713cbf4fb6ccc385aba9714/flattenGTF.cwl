class: CommandLineTool
id: flattenGTF.cwl
inputs:
- id: in_name_annotation_file
  doc: Name of an annotation file in GTF/GFF format.
  type: File?
  inputBinding:
    prefix: -a
- id: in_name_output_file
  doc: Name of output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_specify_feature_type
  doc: "Specify feature type in a GTF annotation. 'exon' by default.\nFeatures with\
    \ the specified feature type are extracted from the\nannotation for processing."
  type: string?
  inputBinding:
    prefix: -t
- id: in_specify_attribute_type
  doc: "Specify attribute type in GTF annotation. 'gene_id' by default.\nThis attribute\
    \ type is used to group features into meta-\nfeatures."
  type: string?
  inputBinding:
    prefix: -g
- id: in_merging_overlapping_exons
  doc: "Merging overlapping exons into multiple non-overlapping exons but\nall the\
    \ edges are kept.\n"
  type: boolean?
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- flattenGTF
