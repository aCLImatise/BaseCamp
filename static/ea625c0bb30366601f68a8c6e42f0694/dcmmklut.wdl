version 1.0

task Dcmmklut {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean minMinDensity
    Boolean maxMaxDensity
    Boolean bB
    Boolean eE
    Boolean fF
    Boolean rR
    Boolean randomRandomSeed
    Boolean oO
    Boolean eE
    String? dcmDcmImgOut
  }
  command <<<
    dcmmklut \
      ~{dcmDcmImgOut} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="--min-density" false="" minMinDensity} \
      ~{true="--max-density" false="" maxMaxDensity} \
      ~{true="-b" false="" bB} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="--random-seed" false="" randomRandomSeed} \
      ~{true="-o" false="" oO} \
      ~{true="-E" false="" eE}
  >>>
}