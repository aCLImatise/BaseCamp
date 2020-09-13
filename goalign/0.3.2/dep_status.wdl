version 1.0

task DepStatus {
  input {
    Boolean? detail
    Boolean? dot
    Boolean? examples
    Boolean? output_texttemplate_format
    Boolean? json
    File? lock
    Boolean? missing
    Boolean? old
    File? out
    Boolean? enable_verbose_logging
    String project
    String constraint
    String version
    String revision
    String latest
  }
  command <<<
    dep status \
      ~{project} \
      ~{constraint} \
      ~{version} \
      ~{revision} \
      ~{latest} \
      ~{if (detail) then "-detail" else ""} \
      ~{if (dot) then "-dot" else ""} \
      ~{if (examples) then "-examples" else ""} \
      ~{if (output_texttemplate_format) then "-f" else ""} \
      ~{if (json) then "-json" else ""} \
      ~{if (lock) then "-lock" else ""} \
      ~{if (missing) then "-missing" else ""} \
      ~{if (old) then "-old" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (enable_verbose_logging) then "-v" else ""}
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
    project: "Import path"
    constraint: "Version constraint, from the manifest"
    version: "Version chosen, from the lock"
    revision: "VCS revision of the chosen version"
    latest: "Latest VCS revision available"
  }
  output {
    File out_stdout = stdout()
    File out_lock = "${in_lock}"
    File out_out = "${in_out}"
  }
}