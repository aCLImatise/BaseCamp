version 1.0

task EDTAProcessI.pl {
  input {
    Boolean genomeGenome
    Boolean ltrLtr
    Boolean tirTir
    Boolean heliHeliTron
    Boolean minMinDiffLtr
    Boolean minMinDiffTir
    Boolean minMinDiffHel
    Boolean repeatmaskerRepeatmasker
    Boolean blastBlast
    Boolean protProtLib
    Boolean threadsThreads
  }
  command <<<
    EDTA_processI.pl \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-ltr" false="" ltrLtr} \
      ~{true="-tir" false="" tirTir} \
      ~{true="-helitron" false="" heliHeliTron} \
      ~{true="-mindiff_ltr" false="" minMinDiffLtr} \
      ~{true="-mindiff_tir" false="" minMinDiffTir} \
      ~{true="-mindiff_hel" false="" minMinDiffHel} \
      ~{true="-repeatmasker" false="" repeatmaskerRepeatmasker} \
      ~{true="-blast" false="" blastBlast} \
      ~{true="-protlib" false="" protProtLib} \
      ~{true="-threads" false="" threadsThreads}
  >>>
}