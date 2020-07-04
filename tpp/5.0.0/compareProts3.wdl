version 1.0

task CompareProts3.pl {
  input {
    String writes
    String comparison
    String to
    String tab
    String delim
    File file
  }
  command <<<
    compareProts3.pl \
      ~{writes} \
      ~{comparison} \
      ~{to} \
      ~{tab} \
      ~{delim} \
      ~{file}
  >>>
  parameter_meta {
    writes: ""
    comparison: ""
    to: ""
    tab: ""
    delim: ""
    file: ""
  }
}