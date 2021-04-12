version 1.0

task DataNorm {
  input {
    File? normalization_method_default
  }
  command <<<
    data_norm \
      ~{if defined(normalization_method_default) then ("--output " +  '"' + normalization_method_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    normalization_method_default: "normalization method (default: upqt)"
  }
  output {
    File out_stdout = stdout()
  }
}