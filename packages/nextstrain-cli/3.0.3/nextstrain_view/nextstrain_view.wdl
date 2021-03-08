version 1.0

task NextstrainView {
  input {
    Boolean? help_all
    Boolean? allow_remote_access
    Int? port
    Int run_again_see
  }
  command <<<
    nextstrain view \
      ~{run_again_see} \
      ~{if (help_all) then "--help-all" else ""} \
      ~{if (allow_remote_access) then "--allow-remote-access" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    help_all: "Show a full help message of all options and exit"
    allow_remote_access: "Allow other computers on the network to access the\\nwebsite (default: False)"
    port: "Listen on the given port instead of the default port"
    run_again_see: "Run again with --help-all instead to see more options."
  }
  output {
    File out_stdout = stdout()
  }
}