version 1.0

task Gffread {
  input {
    Boolean iI
    Boolean lL
    Boolean rR
    Boolean rR
    Boolean uU
    Boolean cC
    String ncNc
    Boolean ignoreIgnoreLocus
    Boolean aA
    Boolean sS
    Boolean nN
    Boolean jJ
    Boolean noNoPseudo
    Boolean inInBed
    Boolean inInTlf
    Boolean kK
    Boolean qQ
    Boolean yY
  }
  command <<<
    gffread \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-R" false="" rR} \
      ~{true="-U" false="" uU} \
      ~{true="-C" false="" cC} \
      ~{if defined(ncNc) then ("--nc " +  '"' + ncNc + '"') else ""} \
      ~{true="--ignore-locus" false="" ignoreIgnoreLocus} \
      ~{true="-A" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{true="-N" false="" nN} \
      ~{true="-J" false="" jJ} \
      ~{true="--no-pseudo" false="" noNoPseudo} \
      ~{true="--in-bed" false="" inInBed} \
      ~{true="--in-tlf" false="" inInTlf} \
      ~{true="-K" false="" kK} \
      ~{true="-Q" false="" qQ} \
      ~{true="-Y" false="" yY}
  >>>
}