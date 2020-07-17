version 1.0

task SequenceDiversity {
  input {
    String? target
    String one_dot
    String two_dot
    String three_dot
    String four_dot
    String five_dot
  }
  command <<<
    sequenceDiversity \
      ~{one_dot} \
      ~{two_dot} \
      ~{three_dot} \
      ~{four_dot} \
      ~{five_dot} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    target: ""
    one_dot: "seqid"
    two_dot: "start of window"
    three_dot: "end of window  "
    four_dot: "pi             "
    five_dot: "eHH            "
  }
}