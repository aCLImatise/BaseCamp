version 1.0

task BatchParallelpl {
  input {
    Boolean? cpu
    File? file_suffix_ie
    String? f
    String var_command
    String output_suffix_vertical_line_none
    String this
    String will
    String run
    String the
    String for
    String each
    File file
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
      ~{file} \
      ~{provided} \
      ~{after} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(file_suffix_ie) then ("-o " +  '"' + file_suffix_ie + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    cpu: "<#> (max number of parallel processes, default: 20)"
    file_suffix_ie: "<file suffix> (instead of stdout, \\\"flag file.suffix will be used\\\")\\ni.e. -o -o txt"
    f: ""
    var_command: ""
    output_suffix_vertical_line_none: ""
    this: ""
    will: ""
    run: ""
    the: ""
    for: ""
    each: ""
    file: ""
    provided: ""
    after: ""
  }
  output {
    File out_stdout = stdout()
  }
}