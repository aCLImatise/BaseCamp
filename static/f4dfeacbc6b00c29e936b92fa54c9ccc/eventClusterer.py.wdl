version 1.0

task EventClustererpy {
  input {
    String? st
    String? p
    String? d
  }
  command <<<
    eventClusterer_py \
      ~{if defined(st) then ("-st " +  '"' + st + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    st: ""
    p: ""
    d: ""
  }
  output {
    File out_stdout = stdout()
  }
}