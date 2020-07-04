version 1.0

task Cassiopeeknife {
  input {
    Boolean? _sequence_convert
    Boolean? _output_file
    Boolean? _show_version
  }
  command <<<
    cassiopeeknife \
      ~{true="-s" false="" _sequence_convert} \
      ~{true="-o" false="" _output_file} \
      ~{true="-v" false="" _show_version}
  >>>
  parameter_meta {
    _sequence_convert: ": sequence to convert"
    _output_file: ": output file"
    _show_version: ": show version"
  }
}