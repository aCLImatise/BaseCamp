version 1.0

task DeepacPredict {
  input {
    Boolean? use_input_instead
    Boolean? sensitive
    Boolean? rapid
    String? custom
    File? output_file_path
    Int? n_cpus
    Array[String] gpus
    Boolean? rc_check
    Int? batch_size
    String? plot_kind
    String? alpha
    String plot_dot
  }
  command <<<
    deepac predict \
      ~{plot_dot} \
      ~{if (use_input_instead) then "--array" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (rapid) then "--rapid" else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if (rc_check) then "--rc-check" else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(plot_kind) then ("--plot-kind " +  '"' + plot_kind + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    use_input_instead: "Use .npy input instead."
    sensitive: "Use the sensitive model."
    rapid: "Use the rapid CNN model."
    custom: "Use the user-supplied, already compiled CUSTOM model."
    output_file_path: "Output file path [.npy]."
    n_cpus: "Number of CPU cores. Default: all."
    gpus: "GPU devices to use (comma-separated). Default: all"
    rc_check: "Check RC-constraint compliance (requires .npy input)."
    batch_size: "Batch size."
    plot_kind: "Plot kind for the RC-constraint compliance check."
    alpha: "Alpha value for the RC-constraint compliance check"
    plot_dot: "--replicates REPLICATES"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}