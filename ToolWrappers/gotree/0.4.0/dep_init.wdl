version 1.0

task DepInit {
  input {
    Boolean? go_path
    Boolean? no_examples
    Boolean? skip_tools
    Boolean? enable_verbose_default
    String? root
  }
  command <<<
    dep init \
      ~{root} \
      ~{if (go_path) then "-gopath" else ""} \
      ~{if (no_examples) then "-no-examples" else ""} \
      ~{if (skip_tools) then "-skip-tools" else ""} \
      ~{if (enable_verbose_default) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    go_path: "search in GOPATH for dependencies (default: false)"
    no_examples: "don't include example in Gopkg.toml (default: false)"
    skip_tools: "skip importing configuration from other dependency managers (default: false)"
    enable_verbose_default: "enable verbose logging (default: false)"
    root: ""
  }
  output {
    File out_stdout = stdout()
  }
}