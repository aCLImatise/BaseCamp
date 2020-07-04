version 1.0

task Blockbuster.x {
  input {
    File file
  }
  command <<<
    blockbuster.x \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}