version 1.0

task Bttcmp {
  input {
    String example
    String the
    Int one
    Int two
    Int three
    Int four
    Int five
    Int six
    Int seven
    String main
    String usage
    String is
    String var_as
    String follows
  }
  command <<<
    bttcmp \
      ~{example} \
      ~{the} \
      ~{one} \
      ~{two} \
      ~{three} \
      ~{four} \
      ~{five} \
      ~{six} \
      ~{seven} \
      ~{main} \
      ~{usage} \
      ~{is} \
      ~{var_as} \
      ~{follows}
  >>>
  parameter_meta {
    example: ""
    the: ""
    one: ""
    two: ""
    three: ""
    four: ""
    five: ""
    six: ""
    seven: ""
    main: ""
    usage: ""
    is: ""
    var_as: ""
    follows: ""
  }
  output {
    File out_stdout = stdout()
  }
}