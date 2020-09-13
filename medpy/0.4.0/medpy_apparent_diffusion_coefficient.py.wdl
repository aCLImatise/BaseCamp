version 1.0

task MedpyApparentDiffusionCoefficientpy {
  input {
    String? threshold
    Boolean? verbose
    Boolean? display_debug_information
    Boolean? force
    Int bzero_image
    String bx_image
    String computed_apparent_diffusion
  }
  command <<<
    medpy_apparent_diffusion_coefficient_py \
      ~{bzero_image} \
      ~{bx_image} \
      ~{computed_apparent_diffusion} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    threshold: "set a fixed threshold for the input images to mask the\\ncomputation"
    verbose: "verbose output"
    display_debug_information: "Display debug information."
    force: "overwrite existing files"
    bzero_image: "the diffusion weighted image required with b=0"
    bx_image: "the diffusion weighted image required with b=x"
    computed_apparent_diffusion: "the computed apparent diffusion coefficient image"
  }
  output {
    File out_stdout = stdout()
  }
}