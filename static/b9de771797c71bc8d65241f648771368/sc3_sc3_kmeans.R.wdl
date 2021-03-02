version 1.0

task Sc3sc3kmeansR {
  input {
    File? input_object_file
    Int? ks
    File? output_object_file
  }
  command <<<
    sc3_sc3_kmeans_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(ks) then ("--ks " +  '"' + ks + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name in which a transformed SC3 'SingleCellExperiment' object has been stored after processed with sc3_calc_transfs()"
    ks: "A comma-separated string or single value representing the number of clusters k to be used for SC3 clustering."
    output_object_file: "File name for R object of type 'SingleCellExperiment' from SC3 in which to store the kmeans clustering as metadata."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}