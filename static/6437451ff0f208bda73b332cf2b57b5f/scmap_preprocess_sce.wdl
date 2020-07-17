version 1.0

task ScmapPreprocessSce.R {
  input {
    String? input_object
    String? output_sce_object
  }
  command <<<
    scmap-preprocess-sce.R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  parameter_meta {
    input_object: "Path to an SCE object in .rds format"
    output_sce_object: "Path for the output object in .rds format"
  }
}