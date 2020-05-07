version 1.0

task GSAlign {
  input {
    Boolean tT
    Boolean oO
    Boolean fmtFmt
    Boolean idIdY
    Boolean slenSlen
    Boolean alenAlen
    Boolean indInd
    Boolean clrClr
    Boolean senSen
    Boolean dpDp
    Boolean gpGp
  }
  command <<<
    GSAlign \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="-fmt" false="" fmtFmt} \
      ~{true="-idy" false="" idIdY} \
      ~{true="-slen" false="" slenSlen} \
      ~{true="-alen" false="" alenAlen} \
      ~{true="-ind" false="" indInd} \
      ~{true="-clr" false="" clrClr} \
      ~{true="-sen" false="" senSen} \
      ~{true="-dp" false="" dpDp} \
      ~{true="-gp" false="" gpGp}
  >>>
}