version 1.0

task MedakaMethylation {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    String? guppy2samGuppy2sam
    String? callCall
  }
  command <<<
    medaka methylation \
      ~{guppy2samGuppy2sam} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{callCall}
  >>>
}