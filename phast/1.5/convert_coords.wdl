version 1.0

task ConvertCoords {
  input {
    String? required_name_alignment
    String? required_name_features
    String? index_frame_defined
    String? index_destination_frame
    String? positive_coordinate_offset
    String? negative_coordinate_offset
    String? phylipmpmss_alignment_format
  }
  command <<<
    convert_coords \
      ~{if defined(required_name_alignment) then ("-m " +  '"' + required_name_alignment + '"') else ""} \
      ~{if defined(required_name_features) then ("-f " +  '"' + required_name_features + '"') else ""} \
      ~{if defined(index_frame_defined) then ("-s " +  '"' + index_frame_defined + '"') else ""} \
      ~{if defined(index_destination_frame) then ("-d " +  '"' + index_destination_frame + '"') else ""} \
      ~{if defined(positive_coordinate_offset) then ("-p " +  '"' + positive_coordinate_offset + '"') else ""} \
      ~{if defined(negative_coordinate_offset) then ("-n " +  '"' + negative_coordinate_offset + '"') else ""} \
      ~{if defined(phylipmpmss_alignment_format) then ("-i " +  '"' + phylipmpmss_alignment_format + '"') else ""}
  >>>
  parameter_meta {
    required_name_alignment: "(required) Name of file in which alignment is defined."
    required_name_features: "(required) Name of file in which features are defined (GFF). "
    index_frame_defined: "Index of frame of reference for feature coordinates, as  defined in the GFF file.  Use an integer 1-N (if N seqs)  or 0 to indicate the coordinate system of the alignment  as a whole.  Default behavior is to match features with  alignment sequences by name (feature by feature)."
    index_destination_frame: "Index of destination frame of reference.  Default is 0 (whole MSA)."
    positive_coordinate_offset: "Positive coordinate offset.  This value will be added to all coordinates.  Useful when  the alignment (or sequence) for which the coordinates  are specified is a sub-alignment of yours. "
    negative_coordinate_offset: "Negative coordinate offset.  This value will be subtracted from all coordinates.  Useful when your alignment is a sub-alignment of the alignment (or  sequence) for which the coordinates are specified."
    phylipmpmss_alignment_format: "|PHYLIP|MPM|SS Alignment format.  Default is to guess format from file contents"
  }
}