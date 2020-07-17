version 1.0

task FilterReads.pl {
  input {
    String? one
    String? two
    String? ref
    String? out
  }
  command <<<
    filter_reads.pl \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    one: ""
    two: ""
    ref: ""
    out: ""
  }
}