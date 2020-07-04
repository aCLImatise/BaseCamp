version 1.0

task FilterFusionSequences.py {
  input {
    String? input_file_containing_coordinates
    String? banned
    String? output_file_where_predictions_written
    String? removed
    String? window
    Boolean? quiet
    String? author
  }
  command <<<
    filter_fusion_sequences.py \
      ~{if defined(input_file_containing_coordinates) then ("--input " +  '"' + input_file_containing_coordinates + '"') else ""} \
      ~{if defined(banned) then ("--banned " +  '"' + banned + '"') else ""} \
      ~{if defined(output_file_where_predictions_written) then ("--output " +  '"' + output_file_where_predictions_written + '"') else ""} \
      ~{if defined(removed) then ("--removed " +  '"' + removed + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing_coordinates: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    banned: "The input file containing the banned fusion sequences."
    output_file_where_predictions_written: "The output file where the frame predictions are written."
    removed: "The output file where the removed fusions are written."
    window: "The length of the window. Default is 30."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}