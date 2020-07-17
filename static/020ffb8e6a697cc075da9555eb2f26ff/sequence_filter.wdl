version 1.0

task SequenceFilter.pyOutputFastx {
  input {
    String? i
    String? o
    Int? q
    String sequence_filter_do_tpy
  }
  command <<<
    sequence_filter.py output_fastx \
      ~{sequence_filter_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    q: ""
    sequence_filter_do_tpy: ""
  }
}