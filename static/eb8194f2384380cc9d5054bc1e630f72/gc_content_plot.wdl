version 1.0

task GcContentPlot {
  input {
    Boolean noNoTags
    Boolean noNoIndices
  }
  command <<<
    gc-content-plot \
      ~{true="--no-tags" false="" noNoTags} \
      ~{true="--no-indices" false="" noNoIndices}
  >>>
}