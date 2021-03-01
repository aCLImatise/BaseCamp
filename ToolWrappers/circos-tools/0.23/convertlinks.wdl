version 1.0

task Convertlinks {
  input {
    Boolean? no_options
    String? links
    String cat
    String links_dot_txt
  }
  command <<<
    convertlinks \
      ~{cat} \
      ~{links_dot_txt} \
      ~{if (no_options) then "-nooptions" else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_options: ""
    links: ""
    cat: ""
    links_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}