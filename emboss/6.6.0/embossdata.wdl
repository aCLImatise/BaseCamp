version 1.0

task Embossdata {
  input {
    Boolean showShowAll
  }
  command <<<
    embossdata \
      ~{true="-showall" false="" showShowAll}
  >>>
}