version 1.0

task Lr2gene.pl {
  input {
    Int? breakpoint_detected_more
  }
  command <<<
    lr2gene.pl \
      ~{if defined(breakpoint_detected_more) then ("-N " +  '"' + breakpoint_detected_more + '"') else ""}
  >>>
  parameter_meta {
    breakpoint_detected_more: "If a breakpoint has been detected more than \"int\" samples, it is considered false positives and removed. Default: 5.  Use in combination with -R."
  }
}