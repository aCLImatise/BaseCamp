version 1.0

task MedpyGridpy {
  input {
    Int? example
    Int? shape
    Int? pixel_spacing
    Int? offset
    Boolean? real
    Boolean? display_more_information
    Boolean? display_debug_information
    Boolean? force
    String generated_grid_volume
    String spacing
  }
  command <<<
    medpy_grid_py \
      ~{generated_grid_volume} \
      ~{spacing} \
      ~{if defined(example) then ("--example " +  '"' + example + '"') else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(pixel_spacing) then ("--pixel-spacing " +  '"' + pixel_spacing + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if (real) then "--real" else ""} \
      ~{if (display_more_information) then "-v" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    example: "Option 1/2: Supply an image to create the grid volume\\nby example (i.e. with same shape, voxel spacing and\\noffset)."
    shape: "Option 2/2: Supply a colon-separated list of integers\\nthat constitute the target volumes shape."
    pixel_spacing: "Set the pixel spacing of the target volume by\\nsupplying a colon-separated list of N numbers, where N\\nis the number of dimension in the generated volume."
    offset: "Set offset of the target volume by supplying a colon-\\nseparated list of N numbers, where N is the number of\\ndimension in the generated volume."
    real: "Spacing is given in real world coordinates, rather\\nthan voxels. For this to make a difference, either the\\n-e switch or the -p switch must be set."
    display_more_information: "Display more information."
    display_debug_information: "Display debug information."
    force: "Silently override existing output images."
    generated_grid_volume: "Generated grid volume."
    spacing: "The grid spacing. Can be a single digit for regular\\nspacing in all dimensions or a colon-separated list of\\nN integers, where N is the number of dimension in the\\ngenerated volume. To skip the grid in one dimension,\\nsimply supply a 0 for it."
  }
  output {
    File out_stdout = stdout()
  }
}