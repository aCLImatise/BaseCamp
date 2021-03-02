version 1.0

task LdhelmetFindConfs {
  input {
    Boolean? _display_version
    Int? num_threads
    Boolean? arg_window_size
    File? arg_name_output
    Int seq_file_one
    Int? seq_file_two
  }
  command <<<
    ldhelmet find_confs \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{if (_display_version) then "-v" else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (arg_window_size) then "-w" else ""} \
      ~{if (arg_name_output) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _display_version: "[ --version ]                Display version."
    num_threads: "(=1)          Number of threads to use."
    arg_window_size: "[ --window_size ] arg (=50)  Window size."
    arg_name_output: "[ --output_file ] arg        Name for output file."
    seq_file_one: ""
    seq_file_two: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_name_output = "${in_arg_name_output}"
  }
}