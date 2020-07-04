version 1.0

task KallistoPseudo {
  input {
    Boolean? quant
    Boolean? single
    String? arguments
    String fast_q_files
  }
  command <<<
    kallisto pseudo \
      ~{arguments} \
      ~{fast_q_files} \
      ~{true="--quant" false="" quant} \
      ~{true="--single" false="" single}
  >>>
  parameter_meta {
    quant: "Quantify using EM algorithm (only in batch mode)"
    single: "Quantify single-end reads"
    arguments: ""
    fast_q_files: ""
  }
}