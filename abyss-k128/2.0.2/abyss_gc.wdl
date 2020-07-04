version 1.0

task AbyssGc {
  input {
    Boolean? verbose
    File? file
  }
  command <<<
    abyss-gc \
      ~{file} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    file: ""
  }
}