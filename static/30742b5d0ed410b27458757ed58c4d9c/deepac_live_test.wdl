version 1.0

task DeepacliveTest {
  input {
    String? deepac_command_use
    Boolean? custom
    File? model
    Int? n_cpus_rec
    Array[String] gpus
    Boolean? keep
    Int? scale
  }
  command <<<
    deepac_live test \
      ~{if defined(deepac_command_use) then ("--command " +  '"' + deepac_command_use + '"') else ""} \
      ~{if (custom) then "--custom" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(n_cpus_rec) then ("--n-cpus-rec " +  '"' + n_cpus_rec + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deepac_command_use: "DeePaC command to use (switches builtin models)."
    custom: "Use a custom model."
    model: "Model to use. \\\"rapid\\\", \\\"sensitive\\\" or custom .h5 file."
    n_cpus_rec: "Number of cores used by the receiver. Default: all"
    gpus: "GPU devices to use (comma-separated). Default: all"
    keep: "Don't delete previous test output."
    scale: "Generate s*1024 reads for testing (Default: s=1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}