version 1.0

task ScmappreprocesssceR {
  input {
    File? input_object
    File? output_sce_object
  }
  command <<<
    scmap_preprocess_sce_R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object: "Path to an SCE object in .rds format"
    output_sce_object: "Path for the output object in .rds format"
  }
  output {
    File out_stdout = stdout()
    File out_output_sce_object = "${in_output_sce_object}"
  }
}