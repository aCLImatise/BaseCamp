version 1.0

task Samtools0.1.18Phase {
  input {
    Int kK
    String bB
    Int qQ
    Int qQ
    Int dD
    Boolean fF
    Boolean aA
    String? samSamTools
    String? phasePhase
    String? inInBam
  }
  command <<<
    samtools_0.1.18 phase \
      ~{samSamTools} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-A" false="" aA} \
      ~{phasePhase} \
      ~{inInBam}
  >>>
}