version 1.0

task Sc3sc3calcdistsR {
  input {
    File? input_object_file
    File? output_object_file
  }
  command <<<
    sc3_sc3_calc_dists_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object where object matrix found"
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'.'"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}