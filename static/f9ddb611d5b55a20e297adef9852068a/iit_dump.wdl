version 1.0

task IitDump {
  input {
    Boolean? sort
    Boolean? tags
    Boolean? counts
    Boolean? integrate
    Boolean? debug
    Boolean? an_not_only
    String? options_dot_dot_dot
    String i_it_file
  }
  command <<<
    iit_dump \
      ~{options_dot_dot_dot} \
      ~{i_it_file} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (tags) then "--tags" else ""} \
      ~{if (counts) then "--counts" else ""} \
      ~{if (integrate) then "--integrate" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (an_not_only) then "--annotonly" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0"
  }
  parameter_meta {
    sort: "Sort results by coordinates"
    tags: "Show tags present in iit file"
    counts: "Show counts for every boundary in iit file"
    integrate: "Print intervals as integral output"
    debug: "Provide debugging information"
    an_not_only: "Dump annotation lines only (no headers)"
    options_dot_dot_dot: ""
    i_it_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}