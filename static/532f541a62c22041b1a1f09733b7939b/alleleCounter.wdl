version 1.0

task AlleleCounter.pl {
  input {
    Boolean bamBam
    Boolean outputOutput
    Boolean lociLoci
    Boolean refRef
    Boolean minMinQual
    Boolean mapMapQual
    Boolean genderGender
    Boolean snp6Snp6
    Boolean versionVersion
  }
  command <<<
    alleleCounter.pl \
      ~{true="-bam" false="" bamBam} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-loci" false="" lociLoci} \
      ~{true="-ref" false="" refRef} \
      ~{true="-minqual" false="" minMinQual} \
      ~{true="-mapqual" false="" mapMapQual} \
      ~{true="-gender" false="" genderGender} \
      ~{true="-snp6" false="" snp6Snp6} \
      ~{true="-version" false="" versionVersion}
  >>>
}