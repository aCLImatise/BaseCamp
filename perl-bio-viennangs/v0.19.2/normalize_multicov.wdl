version 1.0

task NormalizeMulticov.pl {
  input {
    Boolean? input_file_output
    Boolean? read_length
    Boolean? out
    Boolean? type
    Boolean? man
  }
  command <<<
    normalize_multicov.pl \
      ~{true="-i" false="" input_file_output} \
      ~{true="--readlength" false="" read_length} \
      ~{true="--out" false="" out} \
      ~{true="--type" false="" type} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    input_file_output: "Input file in 'bedtools multicov' output format, i.e. an extended BED12 file where each colum past the 12th lists the read counts for one sample/condition."
    read_length: "Read length of the RNA-seq experiment."
    out: "Output folder."
    type: "Normalization method, either 'TPM' (default) or 'RPKM'."
    man: "Prints the manual page and exits"
  }
}