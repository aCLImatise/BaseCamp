version 1.0

task HicCorrectMatrix {
  input {
    String filterFilterThreshold
  }
  command <<<
    hicCorrectMatrix \
      ~{if defined(filterFilterThreshold) then ("--filterThreshold " +  '"' + filterFilterThreshold + '"') else ""}
  >>>
}