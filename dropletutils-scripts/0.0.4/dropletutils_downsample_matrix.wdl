version 1.0

task DropletutilsDownsampleMatrix.R {
  input {
    String? input_object_file
    String? prop
    String? by_col
    String? output_object_file
  }
  command <<<
    dropletutils-downsample-matrix.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(prop) then ("--prop " +  '"' + prop + '"') else ""} \
      ~{if defined(by_col) then ("--bycol " +  '"' + by_col + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object can be found"
    prop: "A numeric scalar or, if bycol=TRUE, a file with ncol(x) lines specifying a value for each cell. All values should lie in [0, 1] specifying the downsampling proportion for the matrix or for each cell."
    by_col: "A logical scalar indicating whether downsampling should be performed on a column-by-column basis."
    output_object_file: "File name in which to store serialized SingleCellExperiment object."
  }
}