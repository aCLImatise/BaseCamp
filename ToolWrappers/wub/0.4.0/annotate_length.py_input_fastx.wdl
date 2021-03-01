version 1.0

task AnnotateLengthpyInputFastx {
  input {
    String? o
    String? i
    String annotate_length_do_tpy
  }
  command <<<
    annotate_length_py input_fastx \
      ~{annotate_length_do_tpy} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    annotate_length_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}