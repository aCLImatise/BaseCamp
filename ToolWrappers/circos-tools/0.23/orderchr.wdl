version 1.0

task Orderchr {
  input {
    File? links
  }
  command <<<
    orderchr \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}