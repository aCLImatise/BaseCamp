version 1.0

task StacksSamtoolsTview {
  input {
    String? p
    String? c
    String? s
  }
  command <<<
    stacks-samtools-tview \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    c: ""
    s: ""
  }
}