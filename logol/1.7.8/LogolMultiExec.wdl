version 1.0

task LogolMultiExec.sh {
  input {
    Boolean enabledEnabledUps
    Boolean confConf
    Boolean lmaxLmax
    Boolean localLocal
    Boolean fastFastA
    Boolean outOut
    Boolean sgeSge
    Boolean lmLmIn
    Boolean noNoClean
    Boolean dnaDna
    Boolean proteinProtein
    Boolean emailEmail
    Boolean allAll
    Boolean rnaRna
    Boolean maxMax
    Boolean maxMaxSpacer
    Boolean gffGff
    Boolean gG
    Boolean hH
    Boolean mM
    Boolean contigContig
    Boolean forceForceSplit
    Boolean filterFilter
    Boolean sS
    Boolean maxMaxRes
    Boolean vV
    Boolean guidGuid
    Boolean maxMaxMatchSize
  }
  command <<<
    LogolMultiExec.sh \
      ~{true="- enabledups" false="" enabledEnabledUps} \
      ~{true="- conf" false="" confConf} \
      ~{true="- lmax" false="" lmaxLmax} \
      ~{true="- local" false="" localLocal} \
      ~{true="- fasta" false="" fastFastA} \
      ~{true="- out" false="" outOut} \
      ~{true="- sge" false="" sgeSge} \
      ~{true="- lmin" false="" lmLmIn} \
      ~{true="- noclean" false="" noNoClean} \
      ~{true="- dna" false="" dnaDna} \
      ~{true="- protein" false="" proteinProtein} \
      ~{true="- email" false="" emailEmail} \
      ~{true="- all" false="" allAll} \
      ~{true="- rna" false="" rnaRna} \
      ~{true="- max" false="" maxMax} \
      ~{true="- maxspacer" false="" maxMaxSpacer} \
      ~{true="- gff" false="" gffGff} \
      ~{true="- g" false="" gG} \
      ~{true="- h" false="" hH} \
      ~{true="- m" false="" mM} \
      ~{true="- contig" false="" contigContig} \
      ~{true="- forcesplit" false="" forceForceSplit} \
      ~{true="- filter" false="" filterFilter} \
      ~{true="- s" false="" sS} \
      ~{true="- maxres" false="" maxMaxRes} \
      ~{true="- v" false="" vV} \
      ~{true="- guid" false="" guidGuid} \
      ~{true="- maxmatchsize" false="" maxMaxMatchSize}
  >>>
}