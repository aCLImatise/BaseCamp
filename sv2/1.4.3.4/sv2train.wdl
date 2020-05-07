version 1.0

task Sv2train {
  input {
    Boolean bamBam
    Boolean vcfVcf
    Boolean bedBed
    Boolean snvSnv
    Boolean pedPed
    Boolean iniIni
    Boolean genomeGenome
    Boolean pcrPcrFree
    Boolean mM
    Boolean prePre
    Boolean featsFeats
    Boolean logLog
    Boolean tmpTmpDir
    Boolean seedSeed
    Boolean outOut
    Boolean oODir
  }
  command <<<
    sv2train \
      ~{true="-bam" false="" bamBam} \
      ~{true="-vcf" false="" vcfVcf} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-snv" false="" snvSnv} \
      ~{true="-ped" false="" pedPed} \
      ~{true="-ini" false="" iniIni} \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-pcrfree" false="" pcrPcrFree} \
      ~{true="-M" false="" mM} \
      ~{true="-pre" false="" prePre} \
      ~{true="-feats" false="" featsFeats} \
      ~{true="-log" false="" logLog} \
      ~{true="-tmp-dir" false="" tmpTmpDir} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-out" false="" outOut} \
      ~{true="-odir" false="" oODir}
  >>>
}