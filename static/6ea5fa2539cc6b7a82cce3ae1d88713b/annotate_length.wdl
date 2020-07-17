version 1.0

task AnnotateLength.pyOutputFastx {
  input {
    String? i
    String? o
    String annotate_length_do_tpy
  }
  command <<<
    annotate_length.py output_fastx \
      ~{annotate_length_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    annotate_length_do_tpy: ""
  }
}