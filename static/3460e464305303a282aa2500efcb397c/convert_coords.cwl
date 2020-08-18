class: CommandLineTool
id: ../../../convert_coords.cwl
inputs:
- id: required_name_alignment
  doc: (required) Name of file in which alignment is defined.
  type: string
  inputBinding:
    prefix: -m
- id: required_name_features
  doc: '(required) Name of file in which features are defined (GFF). '
  type: string
  inputBinding:
    prefix: -f
- id: index_frame_defined
  doc: Index of frame of reference for feature coordinates, as  defined in the GFF
    file.  Use an integer 1-N (if N seqs)  or 0 to indicate the coordinate system
    of the alignment  as a whole.  Default behavior is to match features with  alignment
    sequences by name (feature by feature).
  type: string
  inputBinding:
    prefix: -s
- id: index_destination_frame
  doc: Index of destination frame of reference.  Default is 0 (whole MSA).
  type: string
  inputBinding:
    prefix: -d
- id: positive_coordinate_offset
  doc: 'Positive coordinate offset.  This value will be added to all coordinates.  Useful
    when  the alignment (or sequence) for which the coordinates  are specified is
    a sub-alignment of yours. '
  type: string
  inputBinding:
    prefix: -p
- id: negative_coordinate_offset
  doc: Negative coordinate offset.  This value will be subtracted from all coordinates.  Useful
    when your alignment is a sub-alignment of the alignment (or  sequence) for which
    the coordinates are specified.
  type: string
  inputBinding:
    prefix: -n
- id: phylipmpmss_alignment_format
  doc: '|PHYLIP|MPM|SS Alignment format.  Default is to guess format from file contents'
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_coords
