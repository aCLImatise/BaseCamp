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
      ~{true="-base" false="" base} \
      ~{true="-org" false="" org} \
      ~{true="-db" false="" db} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    base: "The browser basename.  Default: http://genome.ucsc.edu "
    org: "The organism. Default: human"
    db: "The build.  Default: hg18"
    i: ""
    bed_tools: ""
    links: ""
  }
}