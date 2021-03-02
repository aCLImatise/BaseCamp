version 1.0

task MedpyMorphologypy {
  input {
    String? type
    Int? iterations
    Int? size
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
  }
  command <<<
    medpy_morphology_py \
      ~{source_volume} \
      ~{target_volume} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (silently_override_images) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "The type of the morphological operation."
    iterations: "The number of iteration to execute. Supply a value of\\n1 or higher to restrict the effect of the\\nmorphological operation. Otherwise it is applied until\\nsaturation."
    size: "Size of the closing element (>=1). The higher this\\nvalue, the bigger the wholes that get closed (closing)\\nresp. unconnected elements that are removed (opening).\\nIn the 3D case, 1 equals a 6-connectedness, 2 a\\n12-connectedness, 3 a 18-connectedness, etc."
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