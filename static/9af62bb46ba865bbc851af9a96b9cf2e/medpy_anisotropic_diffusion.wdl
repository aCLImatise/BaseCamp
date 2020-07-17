version 1.0

task MedpyAnisotropicDiffusion.py {
  input {
    String? iterations
    String? kappa
    String? gamma
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
  }
  command <<<
    medpy_anisotropic_diffusion.py \
      ~{source_volume} \
      ~{target_volume} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(kappa) then ("--kappa " +  '"' + kappa + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    iterations: "The number of smoothing iterations. Strong parameter."
    kappa: "The algorithms kappa parameter. The higher the more edges are smoothed over."
    gamma: "The algorithms gamma parameter. The higher, the stronger the plateaus between edges are smeared."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
  }
}