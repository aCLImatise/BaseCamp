version 1.0

task GcContentPlot {
  input {
    Boolean? no_tags
    Boolean? no_indices
  }
  command <<<
    gc-content-plot \
      ~{true="--no-tags" false="" no_tags} \
      ~{true="--no-indices" false="" no_indices}
  >>>
  parameter_meta {
    no_tags: "Do not print sequence tags."
    no_indices: "Do not print the index of each GC window.  Ignored if --tabular is given."
  }
}