version 1.0

task Clm {
  input {
    Boolean? nop
    String mode
    File? files
  }
  command <<<
    clm \
      ~{mode} \
      ~{files} \
      ~{true="--nop" false="" nop}
  >>>
  parameter_meta {
    nop: ""
    mode: ""
    files: ""
  }
}