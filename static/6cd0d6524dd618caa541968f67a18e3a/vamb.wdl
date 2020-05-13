version 1.0

task Vamb {
  input {
    Boolean outdirOutdir
    Boolean fastFastA
    Boolean tTNfs
    Boolean namesNames
    Boolean lengthsLengths
    Boolean bamBamFiles
    Boolean rpRpKm
    Boolean jgiJgi
    Boolean mM
    Boolean sS
    Boolean zZ
    Boolean pP
    Boolean noNoRefCheck
    Boolean minMinFastA
    Boolean nN
    Boolean lL
    Boolean aA
    Boolean bB
    Boolean dD
    Boolean cudaCuda
    Boolean eE
    Boolean tT
    Boolean qQ
    Boolean rR
    Boolean wW
    Boolean uU
    Boolean iI
    Boolean cC
    Boolean oO
    String? outdirOutdir
    String? tnfTnfInput
    String? rpRpKmInput
  }
  command <<<
    vamb \
      ~{outdirOutdir} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--tnfs" false="" tTNfs} \
      ~{true="--names" false="" namesNames} \
      ~{true="--lengths" false="" lengthsLengths} \
      ~{true="--bamfiles" false="" bamBamFiles} \
      ~{true="--rpkm" false="" rpRpKm} \
      ~{true="--jgi" false="" jgiJgi} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-z" false="" zZ} \
      ~{true="-p" false="" pP} \
      ~{true="--norefcheck" false="" noNoRefCheck} \
      ~{true="--minfasta" false="" minMinFastA} \
      ~{true="-n" false="" nN} \
      ~{true="-l" false="" lL} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="--cuda" false="" cudaCuda} \
      ~{true="-e" false="" eE} \
      ~{true="-t" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW} \
      ~{true="-u" false="" uU} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{tnfTnfInput} \
      ~{rpRpKmInput}
  >>>
}