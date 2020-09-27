version 1.0

task Tty {
  input {
    Boolean? silent
  }
  command <<<
    tty \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    silent: "print nothing, only return an exit status"
  }
  output {
    File out_stdout = stdout()
  }
}