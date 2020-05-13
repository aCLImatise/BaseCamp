version 1.0

task AlleleCounter.pl {
  input {
    Boolean bamBam
    Boolean outputOutput
    Boolean minMinQual
    Boolean mapMapQual
    Boolean lociLoci
    Boolean versionVersion
  }
  command <<<
    alleleCounter.pl \
      ~{true="-bam" false="" bamBam} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-minqual" false="" minMinQual} \
      ~{true="-mapqual" false="" mapMapQual} \
      ~{true="-loci" false="" lociLoci} \
      ~{true="-version" false="" versionVersion}
  >>>
}