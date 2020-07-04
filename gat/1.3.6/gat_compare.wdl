version 1.0

task GatCompare.py {
  input {
    String? time_it
    String? time_it_name
    Boolean? time_it_header
    String? output_filename_pattern
    Boolean? force_output
    File? stdin
    File? log
    File? error
    File? stdout
  }
  command <<<
    gat-compare.py \
      ~{if defined(time_it) then ("--timeit " +  '"' + time_it + '"') else ""} \
      ~{if defined(time_it_name) then ("--timeit-name " +  '"' + time_it_name + '"') else ""} \
      ~{true="--timeit-header" false="" time_it_header} \
      ~{if defined(output_filename_pattern) then ("--output-filename-pattern " +  '"' + output_filename_pattern + '"') else ""} \
      ~{true="--force-output" false="" force_output} \
      ~{if defined(stdin) then ("--stdin " +  '"' + stdin + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if defined(stdout) then ("--stdout " +  '"' + stdout + '"') else ""}
  >>>
  parameter_meta {
    time_it: "store timeing information in file [none]."
    time_it_name: "name in timing file for this class of jobs [all]."
    time_it_header: "add header for timing information [none]."
    output_filename_pattern: "OUTPUT filename pattern for various methods [%s]."
    force_output: "force over-writing of existing files."
    stdin: "file to read stdin from [default = stdin]."
    log: "file with logging information [default = stdout]."
    error: "file with error information [default = stderr]."
    stdout: "file where output is to go [default = stdout]."
  }
}