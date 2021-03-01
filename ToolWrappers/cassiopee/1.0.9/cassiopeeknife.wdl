version 1.0

task Cassiopeeknife {
  input {
    Boolean? _sequence_convert
    File? _output_file
    Boolean? _show_version
  }
  command <<<
    cassiopeeknife \
      ~{if (_sequence_convert) then "-s" else ""} \
      ~{if (_output_file) then "-o" else ""} \
      ~{if (_show_version) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cassiopee:1.0.9--h77ca1fd_0"
  }
  parameter_meta {
    _sequence_convert: ": sequence to convert"
    _output_file: ": output file"
    _show_version: ": show version"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}