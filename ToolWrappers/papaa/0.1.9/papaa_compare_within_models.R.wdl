version 1.0

task PapaaCompareWithinModelsR {
  input {
    String? pan_can_model
    String? alt_model
  }
  command <<<
    papaa_compare_within_models_R \
      ~{if defined(pan_can_model) then ("--pancan_model " +  '"' + pan_can_model + '"') else ""} \
      ~{if defined(alt_model) then ("--alt_model " +  '"' + alt_model + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    pan_can_model: "location of pancan model"
    alt_model: "location of alt gene model"
  }
  output {
    File out_stdout = stdout()
  }
}