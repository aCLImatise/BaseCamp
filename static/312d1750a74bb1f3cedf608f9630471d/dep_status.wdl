version 1.0

task DepStatus {
  input {
    Boolean? detail
    Boolean? dot
    Boolean? examples
    Boolean? output_texttemplate_format
    Boolean? json
    Boolean? lock
    Boolean? missing
    Boolean? old
    Boolean? out
    Boolean? enable_verbose_logging
    String? package_dot_dot_dot
  }
  command <<<
    dep status \
      ~{package_dot_dot_dot} \
      ~{true="-detail" false="" detail} \
      ~{true="-dot" false="" dot} \
      ~{true="-examples" false="" examples} \
      ~{true="-f" false="" output_texttemplate_format} \
      ~{true="-json" false="" json} \
      ~{true="-lock" false="" lock} \
      ~{true="-missing" false="" missing} \
      ~{true="-old" false="" old} \
      ~{true="-out" false="" out} \
      ~{true="-v" false="" enable_verbose_logging}
  >>>
  parameter_meta {
    detail: "include more detail in the chosen format (default: false)"
    dot: "output the dependency graph in GraphViz format (default: false)"
    examples: "print detailed usage examples (default: false)"
    output_texttemplate_format: "output in text/template format (default: <none>)"
    json: "output in JSON format (default: false)"
    lock: "output in the lock file format (assumes -detail) (default: false)"
    missing: "only show missing dependencies (default: false)"
    old: "only show out-of-date dependencies (default: false)"
    out: "path to a file to which to write the output. Blank value will be ignored (default: <none>)"
    enable_verbose_logging: "enable verbose logging (default: false)"
    package_dot_dot_dot: ""
  }
}