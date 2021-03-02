version 1.0

task MedpyBinaryResamplingpy {
  input {
    Int? order
    Boolean? verbose
    Boolean? display_debug_information
    Boolean? force
    String the_input_image
    String the_output_image
    String spacing
  }
  command <<<
    medpy_binary_resampling_py \
      ~{the_input_image} \
      ~{the_output_image} \
      ~{spacing} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    order: "the bspline order, default is 0 (= nearest neighbour)"
    verbose: "verbose output"
    display_debug_information: "Display debug information."
    force: "overwrite existing files"
    the_input_image: "the input image"
    the_output_image: "the output image"
    spacing: "the desired voxel spacing in colon-separated values,\\ne.g. 1.2,1.2,5.0"
  }
  output {
    File out_stdout = stdout()
  }
}