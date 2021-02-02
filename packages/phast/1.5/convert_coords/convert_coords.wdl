version 1.0

task ConvertCoords {
  input {
    File? required_name_alignment
    File? required_name_features
    Int? index_frame_reference
    Int? index_destination_frame
    String? positive_coordinate_offset
    String? negative_coordinate_offset
    File? phylipmpmssalignment_format_default
  }
  command <<<
    convert_coords \
      ~{if defined(required_name_alignment) then ("-m " +  '"' + required_name_alignment + '"') else ""} \
      ~{if defined(required_name_features) then ("-f " +  '"' + required_name_features + '"') else ""} \
      ~{if defined(index_frame_reference) then ("-s " +  '"' + index_frame_reference + '"') else ""} \
      ~{if defined(index_destination_frame) then ("-d " +  '"' + index_destination_frame + '"') else ""} \
      ~{if defined(positive_coordinate_offset) then ("-p " +  '"' + positive_coordinate_offset + '"') else ""} \
      ~{if defined(negative_coordinate_offset) then ("-n " +  '"' + negative_coordinate_offset + '"') else ""} \
      ~{if defined(phylipmpmssalignment_format_default) then ("-i " +  '"' + phylipmpmssalignment_format_default + '"') else ""}
  >>>
  parameter_meta {
    required_name_alignment: "(required) Name of file in which alignment is defined."
    required_name_features: "(required) Name of file in which features are defined (GFF)."
    index_frame_reference: "Index of frame of reference for feature coordinates, as\\ndefined in the GFF file.  Use an integer 1-N (if N seqs)\\nor 0 to indicate the coordinate system of the alignment\\nas a whole.  Default behavior is to match features with\\nalignment sequences by name (feature by feature)."
    index_destination_frame: "Index of destination frame of reference.  Default is 0\\n(whole MSA)."
    positive_coordinate_offset: "Positive coordinate offset.  This value will be\\nadded to all coordinates.  Useful when\\nthe alignment (or sequence) for which the coordinates\\nare specified is a sub-alignment of yours."
    negative_coordinate_offset: "Negative coordinate offset.  This value will be\\nsubtracted from all coordinates.  Useful when your\\nalignment is a sub-alignment of the alignment (or\\nsequence) for which the coordinates are specified."
    phylipmpmssalignment_format_default: "|PHYLIP|MPM|SS\\nAlignment format.  Default is to guess format from file\\ncontents\\n"
  }
  output {
    File out_stdout = stdout()
  }
}