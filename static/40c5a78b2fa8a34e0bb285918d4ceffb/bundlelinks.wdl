version 1.0

task Bundlelinks {
  input {
    String? links
  }
  command <<<
    bundlelinks \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  parameter_meta {
    links: ""
  }
}