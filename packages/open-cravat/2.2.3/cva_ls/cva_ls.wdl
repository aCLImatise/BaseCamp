version 1.0

task CvaLs {
  input {
    Boolean? available
    Array[String] types
    Boolean? include_hidden
    Array[String] tags
    Boolean? quiet
    Boolean? bytes
    String pattern
  }
  command <<<
    cva ls \
      ~{pattern} \
      ~{if (available) then "--available" else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if (include_hidden) then "--include-hidden" else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (bytes) then "--bytes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    available: "Include available modules"
    types: "Only list modules of certain types"
    include_hidden: "Include hidden modules"
    tags: "Only list modules of given tag(s)"
    quiet: "Only list module names"
    bytes: "Machine readable data sizes"
    pattern: "Regular expression for module names"
  }
  output {
    File out_stdout = stdout()
  }
}