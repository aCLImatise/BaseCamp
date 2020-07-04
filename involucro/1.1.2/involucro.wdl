version 1.0

task Involucro {
  input {
    String? set_url_docker
    Boolean? shorthand__tasks
    String? evaluate_given_script
    String? set_file_default
    String? host
    String? shorthand__set
    String? set
    Boolean? tasks
    Int? set_verbosity_logs
    Boolean? version
    String? set_working_dir
    String? wrap
  }
  command <<<
    involucro \
      ~{if defined(set_url_docker) then ("-H " +  '"' + set_url_docker + '"') else ""} \
      ~{true="-T" false="" shorthand__tasks} \
      ~{if defined(evaluate_given_script) then ("-e " +  '"' + evaluate_given_script + '"') else ""} \
      ~{if defined(set_file_default) then ("-f " +  '"' + set_file_default + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(shorthand__set) then ("-s " +  '"' + shorthand__set + '"') else ""} \
      ~{if defined(set) then ("-set " +  '"' + set + '"') else ""} \
      ~{true="-tasks" false="" tasks} \
      ~{if defined(set_verbosity_logs) then ("-v " +  '"' + set_verbosity_logs + '"') else ""} \
      ~{true="-version" false="" version} \
      ~{if defined(set_working_dir) then ("-w " +  '"' + set_working_dir + '"') else ""} \
      ~{if defined(wrap) then ("-wrap " +  '"' + wrap + '"') else ""}
  >>>
  parameter_meta {
    set_url_docker: "Set the URL of the Docker instance (default \"unix:///var/run/docker.sock\")"
    shorthand__tasks: "Shorthand for --tasks"
    evaluate_given_script: "Evaluate the given script directly, not evaluating the control file"
    set_file_default: "Set the control file (default \"invfile.lua\")"
    host: "Long form for -H (default \"unix:///var/run/docker.sock\")"
    shorthand__set: "Shorthand for --set (default [])"
    set: "Used as KEY=VALUE, makes VAR[KEY] available with value VALUE in Lua script (default [])"
    tasks: "Show available tasks and then exit"
    set_verbosity_logs: "Set verbosity, 3 logs everything, 2 shows standard output (default 1)"
    version: "Show version and the exit"
    set_working_dir: "Set working dir, being the base for all operations. Also settable via environment variable $INVOLUCRO_WORKDIR (default \".\")"
    wrap: "Execute encoded wrap task"
  }
}