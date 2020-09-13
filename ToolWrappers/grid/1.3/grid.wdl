version 1.0

task Grid {
  input {
    Boolean? v
    String display
    String high
    String using
    String a
    String this
    String help
    String single
  }
  command <<<
    grid \
      ~{display} \
      ~{high} \
      ~{using} \
      ~{a} \
      ~{this} \
      ~{help} \
      ~{single} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    display: ""
    high: ""
    using: ""
    a: ""
    this: ""
    help: ""
    single: ""
  }
  output {
    File out_stdout = stdout()
  }
}