version 1.0

task PhenixpyRunSnpPipeline {
  input {
    String? var_input
    String? var_workflow
  }
  command <<<
    phenix_py run_snp_pipeline \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_workflow) then ("--workflow " +  '"' + var_workflow + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    var_workflow: ""
  }
  output {
    File out_stdout = stdout()
  }
}