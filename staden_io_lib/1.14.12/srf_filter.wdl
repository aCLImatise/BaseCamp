version 1.0

task SrfFilter {
  input {
    Boolean vV
  }
  command <<<
    srf_filter \
      ~{true="-v" false="" vV}
  >>>
}