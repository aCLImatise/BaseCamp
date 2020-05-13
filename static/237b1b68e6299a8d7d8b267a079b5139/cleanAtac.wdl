version 1.0

task CleanAtac {
  input {
    Boolean dD
  }
  command <<<
    cleanAtac \
      ~{true="-d" false="" dD}
  >>>
}