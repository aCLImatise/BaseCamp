version 1.0

task _prophecy {
  input {
    Boolean typeType
    Boolean nameName
  }
  command <<<
    _prophecy \
      ~{true="-type" false="" typeType} \
      ~{true="-name" false="" nameName}
  >>>
}