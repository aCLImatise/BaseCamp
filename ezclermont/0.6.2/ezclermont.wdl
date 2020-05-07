version 1.0

task Ezclermont {
  input {
    Int minMinLength
    String experimentExperimentName
    Boolean noNoPartial
    String? contigsContigs
  }
  command <<<
    ezclermont \
      ~{contigsContigs} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(experimentExperimentName) then ("--experiment_name " +  '"' + experimentExperimentName + '"') else ""} \
      ~{true="--no_partial" false="" noNoPartial}
  >>>
}