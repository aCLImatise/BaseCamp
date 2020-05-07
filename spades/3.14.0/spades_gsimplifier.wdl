version 1.0

task SpadesGsimplifier {
  input {
    Boolean gfaGfa
    String spadesSpadesGp
    Boolean useUseCovRatios
    String kK
    String readReadLength
    String coverageCoverage
    String threadsThreads
    File profileProfile
    File stopStopCodons
    File deadDeadEnds
    String tmpdirTmpdir
  }
  command <<<
    spades-gsimplifier \
      ~{true="--gfa" false="" gfaGfa} \
      ~{if defined(spadesSpadesGp) then ("--spades-gp " +  '"' + spadesSpadesGp + '"') else ""} \
      ~{true="--use-cov-ratios" false="" useUseCovRatios} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(stopStopCodons) then ("--stop-codons " +  '"' + stopStopCodons + '"') else ""} \
      ~{if defined(deadDeadEnds) then ("--dead-ends " +  '"' + deadDeadEnds + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""}
  >>>
}