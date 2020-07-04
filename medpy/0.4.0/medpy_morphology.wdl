version 1.0

task MedpyMorphology.py {
  input {
    String? type
    String? iterations
    Int? size
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? silently_override_images
    String source_volume
    String target_volume
  }
  command <<<
    medpy_morphology.py \
      ~{source_volume} \
      ~{target_volume} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="-f" false="" silently_override_images}
  >>>
  parameter_meta {
    type: "The type of the morphological operation."
    iterations: "The number of iteration to execute. Supply a value of 1 or higher to restrict the effect of the morphological operation. Otherwise it is applied until saturation."
    size: "Size of the closing element (>=1). The higher this value, the bigger the wholes that get closed (closing) resp. unconnected elements that are removed (opening). In the 3D case, 1 equals a 6-connectedness, 2 a 12-connectedness, 3 a 18-connectedness, etc."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    silently_override_images: "Silently override existing output images."
    source_volume: "Source volume."
    target_volume: "Target volume."
  }
}