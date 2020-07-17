version 1.0

task MedpyBinaryResampling.py {
  input {
    String? order
    Boolean? verbose
    Boolean? display_debug_information
    Boolean? force
    String the_input_image
    String the_output_image
    String spacing
  }
  command <<<
    medpy_binary_resampling.py \
      ~{the_input_image} \
      ~{the_output_image} \
      ~{spacing} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    order: "the bspline order, default is 0 (= nearest neighbour)"
    verbose: "verbose output"
    display_debug_information: "Display debug information."
    force: "overwrite existing files"
    the_input_image: "the input image"
    the_output_image: "the output image"
    spacing: "the desired voxel spacing in colon-separated values, e.g. 1.2,1.2,5.0"
  }
}