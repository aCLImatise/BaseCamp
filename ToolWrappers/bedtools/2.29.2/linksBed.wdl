version 1.0

task LinksBed {
  input {
    Boolean? base
    Boolean? org
    Boolean? db
    String? i
    String bed_tools
    String links
  }
  command <<<
    linksBed \
      ~{bed_tools} \
      ~{links} \
      ~{if (base) then "-base" else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base: "The browser basename.  Default: http://genome.ucsc.edu"
    org: "The organism. Default: human"
    db: "The build.  Default: hg18"
    i: ""
    bed_tools: ""
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}