version 1.0

task Baralignsh {
  input {
    Boolean? include_alphabeta_betaalpha
    Boolean? number_use_default
    Boolean? number_pass_default
  }
  command <<<
    baralign_sh \
      ~{if (include_alphabeta_betaalpha) then "-R" else ""} \
      ~{if (number_use_default) then "-t" else ""} \
      ~{if (number_pass_default) then "-c" else ""}
  >>>
  parameter_meta {
    include_alphabeta_betaalpha: ": Don't include reversed barcodes (alpha+beta -> beta+alpha) in the alignment target."
    number_use_default: ": Number of threads for bowtie and bowtie-build to use (default: 1)."
    number_pass_default: ": Number to pass to bowtie's --chunkmbs option (default: 512)."
  }
  output {
    File out_stdout = stdout()
  }
}