version 1.0

task Cover {
  input {
    Boolean testTest
  }
  command <<<
    cover \
      ~{true="-test" false="" testTest}
  >>>
}