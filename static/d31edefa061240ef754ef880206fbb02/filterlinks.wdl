version 1.0

task Filterlinks {
  input {
    Boolean? no_intra
    Boolean? no_inter
    File? links
  }
  command <<<
    filterlinks \
      ~{if (no_intra) then "-nointra" else ""} \
      ~{if (no_inter) then "-nointer" else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_intra: ""
    no_inter: ""
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}