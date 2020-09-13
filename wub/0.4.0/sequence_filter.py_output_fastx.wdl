version 1.0

task SequenceFilterpyOutputFastx {
  input {
    Int? q
    String? o
    String? i
    String sequence_filter_do_tpy
  }
  command <<<
    sequence_filter_py output_fastx \
      ~{sequence_filter_do_tpy} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
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