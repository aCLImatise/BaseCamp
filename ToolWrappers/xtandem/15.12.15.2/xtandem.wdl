version 1.0

task Xtandem {
  input {
    String tandem
    File filename
  }
  command <<<
    xtandem \
      ~{tandem} \
      ~{filename}
  >>>
  parameter_meta {
    tandem: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}