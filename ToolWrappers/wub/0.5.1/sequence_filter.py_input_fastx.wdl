version 1.0

task SequenceFilterpyInputFastx {
  input {
    Int? q
    String? o
    String? i
    String sequence_filter_do_tpy
  }
  command <<<
    sequence_filter_py input_fastx \
      ~{sequence_filter_do_tpy} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    q: ""
    o: ""
    i: ""
    sequence_filter_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}