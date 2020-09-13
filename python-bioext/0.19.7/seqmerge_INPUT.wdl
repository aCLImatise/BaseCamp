version 1.0

task SeqmergeINPUT {
  input {
    String? s
    String var_output
  }
  command <<<
    seqmerge INPUT \
      ~{var_output} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}