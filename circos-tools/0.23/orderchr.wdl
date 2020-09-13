version 1.0

task Orderchr {
  input {
    String? karyotype
    File? links
  }
  command <<<
    orderchr \
      ~{if defined(karyotype) then ("-karyotype " +  '"' + karyotype + '"') else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  parameter_meta {
    karyotype: ""
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}