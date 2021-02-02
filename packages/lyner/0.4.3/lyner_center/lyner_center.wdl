version 1.0

task LynerCenter {
  input {
    Boolean? method
  }
  command <<<
    lyner center \
      ~{if (method) then "--method" else ""}
  >>>
  parameter_meta {
    method: "[mean|median]"
  }
  output {
    File out_stdout = stdout()
  }
}