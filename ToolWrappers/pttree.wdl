version 1.0

task Pttree {
  input {
    Boolean? print_size
    String? s
    String? l
  }
  command <<<
    pttree \
      ~{if (print_size) then "--print-size" else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    print_size: ""
    s: ""
    l: ""
  }
  output {
    File out_stdout = stdout()
  }
}