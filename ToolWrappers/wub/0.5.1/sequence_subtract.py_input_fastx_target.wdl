version 1.0

task SequenceSubtractpyInputFastxTarget {
  input {
    String? o
    String? i
    String sequence_subtract_do_tpy
  }
  command <<<
    sequence_subtract_py input_fastx_target \
      ~{sequence_subtract_do_tpy} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    o: ""
    i: ""
    sequence_subtract_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}