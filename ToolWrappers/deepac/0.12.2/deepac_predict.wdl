version 1.0

task DeepacPredict {
  input {
    Boolean? use_npy_input
    Boolean? sensitive
    Boolean? rapid
    String? custom
    File? output_file_path
    Int? n_cpus
    Array[String] gpus
  }
  command <<<
    deepac predict \
      ~{if (use_npy_input) then "--array" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (rapid) then "--rapid" else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""}
  >>>
  parameter_meta {
    use_npy_input: "Use .npy input instead."
    sensitive: "Use the sensitive model."
    rapid: "Use the rapid CNN model."
    custom: "Use the user-supplied, already compiled CUSTOM model."
    output_file_path: "Output file path [.npy]."
    n_cpus: "Number of CPU cores. Default: all."
    gpus: "GPU devices to use (comma-separated). Default: all\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}