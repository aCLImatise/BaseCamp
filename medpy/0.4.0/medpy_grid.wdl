version 1.0

task MedpyGrid.py {
  input {
    String? example
    String? shape
    String? pixel_spacing
    String? offset
    Boolean? real
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? force
    String generated_grid_volume
    String spacing
  }
  command <<<
    medpy_grid.py \
      ~{generated_grid_volume} \
      ~{spacing} \
      ~{if defined(example) then ("--example " +  '"' + example + '"') else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(pixel_spacing) then ("--pixel-spacing " +  '"' + pixel_spacing + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{true="--real" false="" real} \
      ~{true="-v" false="" display_more_information} \
      ~{true="-d" false="" display_debug_information} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    example: "Option 1/2: Supply an image to create the grid volume by example (i.e. with same shape, voxel spacing and offset)."
    shape: "Option 2/2: Supply a colon-separated list of integers that constitute the target volumes shape."
    pixel_spacing: "Set the pixel spacing of the target volume by supplying a colon-separated list of N numbers, where N is the number of dimension in the generated volume."
    offset: "Set offset of the target volume by supplying a colon- separated list of N numbers, where N is the number of dimension in the generated volume."
    real: "Spacing is given in real world coordinates, rather than voxels. For this to make a difference, either the -e switch or the -p switch must be set."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    force: "Silently override existing output images."
    generated_grid_volume: "Generated grid volume."
    spacing: "The grid spacing. Can be a single digit for regular spacing in all dimensions or a colon-separated list of N integers, where N is the number of dimension in the generated volume. To skip the grid in one dimension, simply supply a 0 for it."
  }
}