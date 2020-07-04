version 1.0

task MedpyApparentDiffusionCoefficient.py {
  input {
    String? threshold
    Boolean? verbose
    Boolean? display_debug_information
    Boolean? force
    String bzero_image
    String bx_image
    String bvalue_used_acquire
    String computed_apparent_diffusion
  }
  command <<<
    medpy_apparent_diffusion_coefficient.py \
      ~{bzero_image} \
      ~{bx_image} \
      ~{bvalue_used_acquire} \
      ~{computed_apparent_diffusion} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    threshold: "set a fixed threshold for the input images to mask the computation"
    verbose: "verbose output"
    display_debug_information: "Display debug information."
    force: "overwrite existing files"
    bzero_image: "the diffusion weighted image required with b=0"
    bx_image: "the diffusion weighted image required with b=x"
    bvalue_used_acquire: "the b-value used to acquire the bx-image (i.e. x)"
    computed_apparent_diffusion: "the computed apparent diffusion coefficient image"
  }
}