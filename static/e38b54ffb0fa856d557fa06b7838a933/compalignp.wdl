version 1.0

task Compalignp {
  input {
    String? r
    Boolean? d
    Boolean? v
  }
  command <<<
    compalignp \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    d: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}