version 1.0

task DropletutilsBarcoderanks.R {
  input {
    String? input_object_file
    String? lower
    String? fit_bounds
    String? output_object_file
    String? output_png_file
  }
  command <<<
    dropletutils-barcoderanks.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(fit_bounds) then ("--fit-bounds " +  '"' + fit_bounds + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_png_file) then ("--output-png-file " +  '"' + output_png_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object can be found"
    lower: "A numeric scalar specifying the lower bound on the total UMI count, at or below which all barcodes are assumed to correspond to empty droplets."
    fit_bounds: "A string, '<lower>,<upper>', specifying the lower and upper bouunds on the total UMI count for spline fitting."
    output_object_file: "File name in which to store serialized SingleCellExperiment object."
    output_png_file: "File name in which to store serialized SingleCellExperiment object."
  }
}