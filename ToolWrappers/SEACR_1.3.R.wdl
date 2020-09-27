version 1.0

task SEACR13R {
  input {
    String? exp
    String? ctrl
    Boolean? norm
    String? _output_prefix
  }
  command <<<
    SEACR_1_3_R \
      ~{if defined(exp) then ("--exp " +  '"' + exp + '"') else ""} \
      ~{if defined(ctrl) then ("--ctrl " +  '"' + ctrl + '"') else ""} \
      ~{if (norm) then "--norm" else ""} \
      ~{if defined(_output_prefix) then ("--output " +  '"' + _output_prefix + '"') else ""}
  >>>
  parameter_meta {
    exp: "- Input AUC values from experiment CUT&RUN"
    ctrl: "- Input AUC values from control CUT&RUN"
    norm: "=[yes|no]     - Whether to normalize control and experimental files"
    _output_prefix: "- Output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}