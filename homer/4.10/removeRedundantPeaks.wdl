version 1.0

task RemoveRedundantPeaks.pl {
  input {
    Boolean blatBlat
    Boolean sizeSize
    Directory genomeGenome
    Boolean maskMask
  }
  command <<<
    removeRedundantPeaks.pl \
      ~{true="-blat" false="" blatBlat} \
      ~{true="-size" false="" sizeSize} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="-mask" false="" maskMask}
  >>>
}