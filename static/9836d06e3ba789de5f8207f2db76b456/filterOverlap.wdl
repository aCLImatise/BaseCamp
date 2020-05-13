version 1.0

task FilterOverlap {
  input {
    Boolean ovlOvl
    Boolean obtObt
    String minlengthMinlength
    String maxMaxError
    Boolean noNoContainment
    Boolean noNoDovetail
    String gkpGkp
  }
  command <<<
    filterOverlap \
      ~{true="-ovl" false="" ovlOvl} \
      ~{true="-obt" false="" obtObt} \
      ~{if defined(minlengthMinlength) then ("-minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(maxMaxError) then ("-maxerror " +  '"' + maxMaxError + '"') else ""} \
      ~{true="-nocontainment" false="" noNoContainment} \
      ~{true="-nodovetail" false="" noNoDovetail} \
      ~{if defined(gkpGkp) then ("-gkp " +  '"' + gkpGkp + '"') else ""}
  >>>
}