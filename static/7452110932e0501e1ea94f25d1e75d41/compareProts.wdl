version 1.0

task CompareProts.pl {
  input {
    Boolean? d_three
    String writes
    String comparison
    String to
    String tab
    String delim
    File file
  }
  command <<<
    compareProts.pl \
      ~{writes} \
      ~{comparison} \
      ~{to} \
      ~{tab} \
      ~{delim} \
      ~{file} \
      ~{true="-D3" false="" d_three}
  >>>
  parameter_meta {
    d_three: ""
    writes: ""
    comparison: ""
    to: ""
    tab: ""
    delim: ""
    file: ""
  }
}