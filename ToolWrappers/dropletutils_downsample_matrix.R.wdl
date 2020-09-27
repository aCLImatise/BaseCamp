version 1.0

task DropletutilsdownsamplematrixR {
  input {
    File? input_object_file
    File? prop
    String? by_col
    File? output_object_file
  }
  command <<<
    dropletutils_downsample_matrix_R \
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
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}