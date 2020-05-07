version 1.0

task PurityEM {
  input {
    String oO
    Boolean pP
    Int maxMaxIt
    Float epsilonEpsilon
    Boolean mMPloidy
    Boolean maxMaxComp
    Boolean nrsNrs
    Boolean subsampleSubsample
    String? inputInput
  }
  command <<<
    purityEM \
      ~{inputInput} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(maxMaxIt) then ("--max_it " +  '"' + maxMaxIt + '"') else ""} \
      ~{if defined(epsilonEpsilon) then ("--epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{true="--mploidy" false="" mMPloidy} \
      ~{true="--maxComp" false="" maxMaxComp} \
      ~{true="--nRS" false="" nrsNrs} \
      ~{true="--subsample" false="" subsampleSubsample}
  >>>
}