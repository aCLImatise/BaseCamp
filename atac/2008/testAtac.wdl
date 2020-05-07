version 1.0

task TestAtac {
  input {
    Boolean iI
  }
  command <<<
    testAtac \
      ~{true="-i" false="" iI}
  >>>
}