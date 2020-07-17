version 1.0

task TOBIASMaxPos {
  input {
    Boolean? bed
    Boolean? bigwig
    Boolean? path_output_default
    Boolean? invert
  }
  command <<<
    TOBIAS MaxPos \
      ~{true="--bed" false="" bed} \
      ~{true="--bigwig" false="" bigwig} \
      ~{true="--output" false="" path_output_default} \
      ~{true="--invert" false="" invert}
  >>>
  parameter_meta {
    bed: "Regions to search for max position within"
    bigwig: "Scores used to identify maximum value"
    path_output_default: "Path to output .bed-file (default: scored sites are written to stdout)"
    invert: "Find minimum position instead of maximum position"
  }
}