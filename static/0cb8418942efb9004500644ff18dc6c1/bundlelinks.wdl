version 1.0

task Bundlelinks {
  input {
    File? links
  }
  command <<<
    bundlelinks \
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