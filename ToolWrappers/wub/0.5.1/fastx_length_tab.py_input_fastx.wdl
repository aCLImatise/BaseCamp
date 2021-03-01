version 1.0

task FastxLengthTabpyInputFastx {
  input {
    String? i
    String? output_tsv
  }
  command <<<
    fastx_length_tab_py input_fastx \
      ~{output_tsv} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    i: ""
    output_tsv: ""
  }
  output {
    File out_stdout = stdout()
  }
}