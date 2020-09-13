version 1.0

task Clm {
  input {
    Boolean? nop
    String mode
    String? files
  }
  command <<<
    clm \
      ~{mode} \
      ~{files} \
      ~{if (nop) then "--nop" else ""}
  >>>
  parameter_meta {
    nop: ""
    mode: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}