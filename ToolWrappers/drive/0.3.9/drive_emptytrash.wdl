version 1.0

task DriveEmptytrash {
  input {
    Boolean? quiet
  }
  command <<<
    drive emptytrash \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}