version 1.0

task Baralignsh {
  input {
    Boolean? include_reversed_barcodes
    Boolean? number_threads_bowtiebuild
    Boolean? number_pass_default
  }
  command <<<
    baralign_sh \
      ~{if (include_reversed_barcodes) then "-R" else ""} \
      ~{if (number_threads_bowtiebuild) then "-t" else ""} \
      ~{if (number_pass_default) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include_reversed_barcodes: ": Don't include reversed barcodes (alpha+beta -> beta+alpha) in the alignment target."
    number_threads_bowtiebuild: ": Number of threads for bowtie and bowtie-build to use (default: 1)."
    number_pass_default: ": Number to pass to bowtie's --chunkmbs option (default: 512)."
  }
  output {
    File out_stdout = stdout()
  }
}