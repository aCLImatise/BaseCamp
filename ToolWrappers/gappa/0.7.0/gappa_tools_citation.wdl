version 1.0

task GappaToolsCitation {
  input {
    String? format
    Boolean? all
    Boolean? list
    String? keys_dot_dot_dot
  }
  command <<<
    gappa tools citation \
      ~{keys_dot_dot_dot} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (list) then "--list" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.0--he513fc3_0"
  }
  parameter_meta {
    format: ":{bibtex,markdown,both}=bibtex\\nOutput format for citations."
    all: "Print all relevant citations used by commands in gappa."
    list: "List all available citation keys."
    keys_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}