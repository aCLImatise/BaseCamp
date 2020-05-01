version 1.0

task ProfileGottcha.pl {
  input {
    Boolean genomeGenomeVitals
    Boolean trimTrimStats
    String prefixPrefix
    Boolean genomeGenomeVitals
    Boolean trimTrimStats
    String prefixPrefix
  }
  command <<<
    profileGottcha.pl \
      ~{true="--genomeVitals" false="" genomeGenomeVitals} \
      ~{true="--trimStats" false="" trimTrimStats} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--genomeVitals" false="" genomeGenomeVitals} \
      ~{true="--trimStats" false="" trimTrimStats} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}