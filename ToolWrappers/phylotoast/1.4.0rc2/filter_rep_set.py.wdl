version 1.0

task FilterRepSetpy {
  input {
    String? u
    String? r
  }
  command <<<
    filter_rep_set_py \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    u: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}