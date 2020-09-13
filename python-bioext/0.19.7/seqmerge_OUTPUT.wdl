version 1.0

task SeqmergeOUTPUT {
  input {
    String? s
    String seq_merge
    String var_input
    String var_output
  }
  command <<<
    seqmerge OUTPUT \
      ~{seq_merge} \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    seq_merge: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}