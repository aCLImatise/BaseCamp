version 1.0

task DriveCp {
  input {
    Boolean? quiet
    Boolean? recursive
  }
  command <<<
    drive cp \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "if set, do not log anything but errors"
    recursive: "recursive copying\\n"
  }
  output {
    File out_stdout = stdout()
  }
}