version 1.0

task Pairtools {
  input {
    Boolean postPostMortem
    String outputOutputProfile
  }
  command <<<
    pairtools \
      ~{true="--post-mortem" false="" postPostMortem} \
      ~{if defined(outputOutputProfile) then ("--output-profile " +  '"' + outputOutputProfile + '"') else ""}
  >>>
}