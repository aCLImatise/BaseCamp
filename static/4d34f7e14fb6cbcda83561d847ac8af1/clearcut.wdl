version 1.0

task Clearcut {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    String seedSeed
    Boolean noNoRandom
    Boolean shuffleShuffle
    Boolean neighborNeighbor
    Boolean stdinStdin
    Boolean distanceDistance
    Boolean alignmentAlignment
    Boolean dnaDna
    Boolean proteinProtein
    Boolean jukesJukes
    Boolean kimuraKimura
    Boolean stdoutStdout
    File matrixMatrixOut
    String nNTrees
    Boolean expExpBlen
    Boolean expExpDist
  }
  command <<<
    clearcut \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--norandom" false="" noNoRandom} \
      ~{true="--shuffle" false="" shuffleShuffle} \
      ~{true="--neighbor" false="" neighborNeighbor} \
      ~{true="--stdin" false="" stdinStdin} \
      ~{true="--distance" false="" distanceDistance} \
      ~{true="--alignment" false="" alignmentAlignment} \
      ~{true="--DNA" false="" dnaDna} \
      ~{true="--protein" false="" proteinProtein} \
      ~{true="--jukes" false="" jukesJukes} \
      ~{true="--kimura" false="" kimuraKimura} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{if defined(matrixMatrixOut) then ("--matrixout " +  '"' + matrixMatrixOut + '"') else ""} \
      ~{if defined(nNTrees) then ("--ntrees " +  '"' + nNTrees + '"') else ""} \
      ~{true="--expblen" false="" expExpBlen} \
      ~{true="--expdist" false="" expExpDist}
  >>>
}