version 1.0

task Microhapdb {
  input {
    Boolean? files
    Boolean? v
    String cmd
  }
  command <<<
    microhapdb \
      ~{cmd} \
      ~{if (files) then "--files" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    files: "print data table filenames and exit"
    v: ""
    cmd: "frequency, lookup, marker, population"
  }
  output {
    File out_stdout = stdout()
  }
}