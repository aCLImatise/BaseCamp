version 1.0

task Msistats {
  input {
    Boolean? arg_windows_use
    Boolean? arg_window_use
    Boolean? arg_name_write
    Boolean? _be_verbose
    String? pm_z
    String? p_time
    File filename
  }
  command <<<
    msistats \
      ~{filename} \
      ~{true="-m" false="" arg_windows_use} \
      ~{true="-t" false="" arg_window_use} \
      ~{true="-o" false="" arg_name_write} \
      ~{true="-v" false="" _be_verbose} \
      ~{if defined(pm_z) then ("--pmz " +  '"' + pm_z + '"') else ""} \
      ~{if defined(p_time) then ("--ptime " +  '"' + p_time + '"') else ""}
  >>>
  parameter_meta {
    arg_windows_use: "[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor."
    arg_window_use: "[ --time ] arg (=10) : Window to use for finding nearest mz neighbors"
    arg_name_write: "[ --out ] arg        : Name of file to write output to. "
    _be_verbose: "[ --verbose ]        : Be verbose."
    pm_z: ": width for empty pixel analysis. Otherwise set to mz  option value"
    p_time: ": width for empty pixel analysis. Otherwise set to time option value"
    filename: ""
  }
}