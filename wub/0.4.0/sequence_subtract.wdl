version 1.0

task SequenceSubtract.pyOutputFastx {
  input {
    String? i
    String? o
    String sequence_subtract_do_tpy
  }
  command <<<
    sequence_subtract.py output_fastx \
      ~{sequence_subtract_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    sequence_subtract_do_tpy: ""
  }
}