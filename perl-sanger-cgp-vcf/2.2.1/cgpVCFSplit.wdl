version 1.0

task CgpVCFSplit.pl {
  input {
    String? l
    String? f
  }
  command <<<
    cgpVCFSplit.pl \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    l: ""
    f: ""
  }
}