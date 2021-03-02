version 1.0

task ProphyleCompile {
  input {
    Boolean? clean_files_instead
    Boolean? force_recompilation
    Boolean? run_compilation_parallel
    Boolean? advanced_configuration_json
    String? str
  }
  command <<<
    prophyle compile \
      ~{str} \
      ~{if (clean_files_instead) then "-C" else ""} \
      ~{if (force_recompilation) then "-F" else ""} \
      ~{if (run_compilation_parallel) then "-P" else ""} \
      ~{if (advanced_configuration_json) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clean_files_instead: "clean files instead of compiling"
    force_recompilation: "force recompilation"
    run_compilation_parallel: "run compilation in parallel"
    advanced_configuration_json: "[STR [STR ...]]  advanced configuration (a JSON dictionary)"
    str: ""
  }
  output {
    File out_stdout = stdout()
  }
}