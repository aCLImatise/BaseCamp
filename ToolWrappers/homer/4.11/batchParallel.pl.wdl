version 1.0

task BatchParallelpl {
  input {
    Boolean? cpu
    File? file_suffix_stdout
    String? f
    String var_command
    String output_suffix_vertical_line_none
    String this
    String will
    String run
    String the
    String for
    String each
    File var_file
    String provided
    String after
  }
  command <<<
    batchParallel_pl \
      ~{var_command} \
      ~{output_suffix_vertical_line_none} \
      ~{this} \
      ~{will} \
      ~{run} \
      ~{the} \
      ~{for} \
      ~{each} \
      ~{var_file} \
      ~{provided} \
      ~{after} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(file_suffix_stdout) then ("-o " +  '"' + file_suffix_stdout + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cpu: "<#> (max number of parallel processes, default: 20)"
    file_suffix_stdout: "<file suffix> (instead of stdout, \\\"flag file.suffix will be used\\\")\\ni.e. -o -o txt"
    f: ""
    var_command: ""
    output_suffix_vertical_line_none: ""
    this: ""
    will: ""
    run: ""
    the: ""
    for: ""
    each: ""
    var_file: ""
    provided: ""
    after: ""
  }
  output {
    File out_stdout = stdout()
  }
}