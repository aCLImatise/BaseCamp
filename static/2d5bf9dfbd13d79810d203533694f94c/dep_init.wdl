version 1.0

task DepInit {
  input {
    Boolean? go_path
    Boolean? no_examples
    Boolean? skip_tools
    Boolean? enable_verbose_logging
    String? root
  }
  command <<<
    dep init \
      ~{root} \
      ~{true="-gopath" false="" go_path} \
      ~{true="-no-examples" false="" no_examples} \
      ~{true="-skip-tools" false="" skip_tools} \
      ~{true="-v" false="" enable_verbose_logging}
  >>>
  parameter_meta {
    go_path: "search in GOPATH for dependencies (default: false)"
    no_examples: "don't include example in Gopkg.toml (default: false)"
    skip_tools: "skip importing configuration from other dependency managers (default: false)"
    enable_verbose_logging: "enable verbose logging (default: false)"
    root: ""
  }
}