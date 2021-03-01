version 1.0

task Quickmerge {
  input {
    Boolean? hco
    String? r
    String? q
    File? d
  }
  command <<<
    quickmerge \
      ~{if (hco) then "-hco" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hco: ""
    r: ""
    q: ""
    d: ""
  }
  output {
    File out_stdout = stdout()
    File out_d = "${in_d}"
  }
}