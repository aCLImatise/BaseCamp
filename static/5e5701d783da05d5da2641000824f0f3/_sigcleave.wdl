version 1.0

task _sigcleave {
  input {
    Boolean minMinWeight
  }
  command <<<
    _sigcleave \
      ~{true="-minweight" false="" minMinWeight}
  >>>
}