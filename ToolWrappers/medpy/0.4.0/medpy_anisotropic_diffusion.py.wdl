version 1.0

task MedpyAnisotropicDiffusionpy {
  input {
    Int? iterations
    String? kappa
    String? gamma
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
  }
  command <<<
    medpy_anisotropic_diffusion_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(kappa) then ("--kappa " +  '"' + kappa + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    iterations: "The number of smoothing iterations. Strong parameter."
    kappa: "The algorithms kappa parameter. The higher the more\\nedges are smoothed over."
    gamma: "The algorithms gamma parameter. The higher, the\\nstronger the plateaus between edges are smeared."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
  }
  output {
    File out_stdout = stdout()
  }
}