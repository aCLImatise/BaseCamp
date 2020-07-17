version 1.0

task Junctools {
  input {
    String this
    String script
    String contains
    String a
    String number
    String of
    String tools
    String for
    String manipulating
    String junction
    File files_dot
  }
  command <<<
    junctools \
      ~{this} \
      ~{script} \
      ~{contains} \
      ~{a} \
      ~{number} \
      ~{of} \
      ~{tools} \
      ~{for} \
      ~{manipulating} \
      ~{junction} \
      ~{files_dot}
  >>>
  parameter_meta {
    this: ""
    script: ""
    contains: ""
    a: ""
    number: ""
    of: ""
    tools: ""
    for: ""
    manipulating: ""
    junction: ""
    files_dot: ""
  }
}