version 1.0

task Msistats {
  input {
    Boolean? arg_windows_use
    Boolean? arg_window_use
    File? arg_name_write
    Boolean? _be_verbose
    String? pm_z
    String? p_time
    File filename
  }
  command <<<
    msistats \
      ~{filename} \
      ~{if (arg_windows_use) then "-m" else ""} \
      ~{if (arg_window_use) then "-t" else ""} \
      ~{if (arg_name_write) then "-o" else ""} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(pm_z) then ("--pmz " +  '"' + pm_z + '"') else ""} \
      ~{if defined(p_time) then ("--ptime " +  '"' + p_time + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_windows_use: "[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor."
    arg_window_use: "[ --time ] arg (=10) : Window to use for finding nearest mz neighbors"
    arg_name_write: "[ --out ] arg        : Name of file to write output to."
    _be_verbose: "[ --verbose ]        : Be verbose."
    pm_z: ": width for empty pixel analysis. Otherwise set to mz\\noption value"
    p_time: ": width for empty pixel analysis. Otherwise set to time\\noption value\\n"
    filename: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_name_write = "${in_arg_name_write}"
  }
}