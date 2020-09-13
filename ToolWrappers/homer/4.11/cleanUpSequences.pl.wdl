version 1.0

task CleanUpSequencespl {
  input {
    Boolean? max
  }
  command <<<
    cleanUpSequences_pl \
      ~{if (max) then "-max" else ""}
  >>>
  parameter_meta {
    max: "# and -min # removes sequences that are longer than max and shorter than min(optional)"
  }
  output {
    File out_stdout = stdout()
  }
}