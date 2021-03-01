version 1.0

task NormalizeMulticovpl {
  input {
    Boolean? input_file_file
    Boolean? read_length
    Directory? out
    Boolean? type
    Boolean? man
  }
  command <<<
    normalize_multicov_pl \
      ~{if (input_file_file) then "-i" else ""} \
      ~{if (read_length) then "--readlength" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (type) then "--type" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_file: "Input file in 'bedtools multicov' output format, i.e. an extended\\nBED12 file where each colum past the 12th lists the read counts for\\none sample/condition."
    read_length: "Read length of the RNA-seq experiment."
    out: "Output folder."
    type: "Normalization method, either 'TPM' (default) or 'RPKM'."
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}