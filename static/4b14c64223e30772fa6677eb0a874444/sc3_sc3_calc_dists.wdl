version 1.0

task Sc3Sc3CalcDists.R {
  input {
    String? input_object_file
    String? output_object_file
  }
  command <<<
    sc3-sc3-calc-dists.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object where object matrix found"
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'.'"
  }
}