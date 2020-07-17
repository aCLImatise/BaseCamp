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
      ~{true="--all" false="" all} \
      ~{true="--list" false="" list}
  >>>
  parameter_meta {
    format: ":{bibtex,markdown,both}=bibtex Output format for citations."
    all: "Print all relevant citations used by commands in gappa."
    list: "List all available citation keys."
    keys_dot_dot_dot: ""
  }
}