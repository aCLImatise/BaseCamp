version 1.0

task Filterlinks {
  input {
    String? links
    Boolean? no_inter
    Boolean? no_intra
    Boolean? debug
  }
  command <<<
    filterlinks \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""} \
      ~{true="-nointer" false="" no_inter} \
      ~{true="-nointra" false="" no_intra} \
      ~{true="-debug" false="" debug}
  >>>
  parameter_meta {
    links: ""
    no_inter: ""
    no_intra: ""
    debug: ""
  }
}