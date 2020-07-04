version 1.0

task SegtoolsCompare {
  input {
    Boolean? edit_distance
    Boolean? quick
    Boolean? quiet
    String var_3
    String var_4
  }
  command <<<
    segtools-compare \
      ~{var_3} \
      ~{var_4} \
      ~{true="--edit-distance" false="" edit_distance} \
      ~{true="--quick" false="" quick} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    edit_distance: "Measure the base-wise edit distance between the two specified segmentations"
    quick: "Compute values only for one chromosome."
    quiet: "Do not print diagnostic messages."
    var_3: ""
    var_4: ""
  }
}