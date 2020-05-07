version 1.0

task Sv2 {
  input {
    Boolean bamBam
    Boolean vcfVcf
    Boolean bedBed
    Boolean snvSnv
    Boolean pedPed
    Boolean genomeGenome
    Boolean pcrPcrFree
    Boolean mM
    Boolean mergeMerge
    Boolean minMinOvr
    Boolean noNoAnNo
    Boolean prePre
    Boolean featsFeats
    Boolean loadLoadClf
    Boolean clfClf
    Boolean downloadDownload
    Boolean hg19Hg19
    Boolean hg38Hg38
    Boolean mm10Mm10
    Boolean iniIni
    Boolean logLog
    Boolean tmpTmpDir
    Boolean seedSeed
    Boolean outOut
    Boolean oODir
  }
  command <<<
    sv2 \
      ~{true="-bam" false="" bamBam} \
      ~{true="-vcf" false="" vcfVcf} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-snv" false="" snvSnv} \
      ~{true="-ped" false="" pedPed} \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-pcrfree" false="" pcrPcrFree} \
      ~{true="-M" false="" mM} \
      ~{true="-merge" false="" mergeMerge} \
      ~{true="-min-ovr" false="" minMinOvr} \
      ~{true="-no-anno" false="" noNoAnNo} \
      ~{true="-pre" false="" prePre} \
      ~{true="-feats" false="" featsFeats} \
      ~{true="-load-clf" false="" loadLoadClf} \
      ~{true="-clf" false="" clfClf} \
      ~{true="-download" false="" downloadDownload} \
      ~{true="-hg19" false="" hg19Hg19} \
      ~{true="-hg38" false="" hg38Hg38} \
      ~{true="-mm10" false="" mm10Mm10} \
      ~{true="-ini" false="" iniIni} \
      ~{true="-log" false="" logLog} \
      ~{true="-tmp-dir" false="" tmpTmpDir} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-out" false="" outOut} \
      ~{true="-odir" false="" oODir}
  >>>
}