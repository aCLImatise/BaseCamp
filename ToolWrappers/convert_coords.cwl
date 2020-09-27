class: CommandLineTool
id: convert_coords.cwl
inputs:
- id: in_required_name_alignment
  doc: (required) Name of file in which alignment is defined.
  type: File
  inputBinding:
    prefix: -m
- id: in_required_name_features
  doc: (required) Name of file in which features are defined (GFF).
  type: File
  inputBinding:
    prefix: -f
- id: in_index_frame_reference
  doc: "Index of frame of reference for feature coordinates, as\ndefined in the GFF\
    \ file.  Use an integer 1-N (if N seqs)\nor 0 to indicate the coordinate system\
    \ of the alignment\nas a whole.  Default behavior is to match features with\n\
    alignment sequences by name (feature by feature)."
  type: long
  inputBinding:
    prefix: -s
- id: in_index_destination_frame
  doc: "Index of destination frame of reference.  Default is 0\n(whole MSA)."
  type: long
  inputBinding:
    prefix: -d
- id: in_positive_coordinate_offset
  doc: "Positive coordinate offset.  This value will be\nadded to all coordinates.\
    \  Useful when\nthe alignment (or sequence) for which the coordinates\nare specified\
    \ is a sub-alignment of yours."
  type: string
  inputBinding:
    prefix: -p
- id: in_negative_coordinate_offset
  doc: "Negative coordinate offset.  This value will be\nsubtracted from all coordinates.\
    \  Useful when your\nalignment is a sub-alignment of the alignment (or\nsequence)\
    \ for which the coordinates are specified."
  type: string
  inputBinding:
    prefix: -n
- id: in_phylipmpmssalignment_format_default
  doc: "|PHYLIP|MPM|SS\nAlignment format.  Default is to guess format from file\n\
    contents\n"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_coords
