version 1.0

task FastxEndsTabpy {
  input {
    String? input_format_fastq
    String? n
  }
  command <<<
    fastx_ends_tab_py \
      ~{if defined(input_format_fastq) then ("-i " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    n: "."
  }
  output {
    File out_stdout = stdout()
  }
}