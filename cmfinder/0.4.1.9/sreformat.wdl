version 1.0

task Sreformat {
  input {
    Boolean dD
    Boolean rR
    Boolean lL
    Boolean uU
    Boolean xX
    Boolean nN
    String inInFormat
    Boolean minMinGap
    Boolean noNoGap
    Boolean pfamPfam
    Boolean samSam
    String samSamFrac
    String gapGapSym
    Boolean wWUsSify
    Boolean deDeWuss
    String? fastFastA
    String? emblEmbl
    String? genbankGenbank
    String? gcgGcg
    String? gcgGcgData
    String? pirPir
    String? rawRaw
  }
  command <<<
    sreformat \
      ~{fastFastA} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-u" false="" uU} \
      ~{true="-x" false="" xX} \
      ~{true="-n" false="" nN} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--mingap" false="" minMinGap} \
      ~{true="--nogap" false="" noNoGap} \
      ~{true="--pfam" false="" pfamPfam} \
      ~{true="--sam" false="" samSam} \
      ~{if defined(samSamFrac) then ("--samfrac " +  '"' + samSamFrac + '"') else ""} \
      ~{if defined(gapGapSym) then ("--gapsym " +  '"' + gapGapSym + '"') else ""} \
      ~{true="--wussify" false="" wWUsSify} \
      ~{true="--dewuss" false="" deDeWuss} \
      ~{emblEmbl} \
      ~{genbankGenbank} \
      ~{gcgGcg} \
      ~{gcgGcgData} \
      ~{pirPir} \
      ~{rawRaw}
  >>>
}