version 1.0

task Orderchr {
  input {
    String? links
  }
  command <<<
    orderchr \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  parameter_meta {
    links: ""
  }
}