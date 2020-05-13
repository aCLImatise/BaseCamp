version 1.0

task _embossdata {
  input {
    Boolean showShowAll
  }
  command <<<
    _embossdata \
      ~{true="-showall" false="" showShowAll}
  >>>
}