version 1.0

task RScapeSimNobps {
  input {
    Boolean vV
    String inInFormat
    String outdirOutdir
    String oO
    Boolean oneOneMsa
    String? thatThat
    String? removeRemove
    String? notNot
    String? annotatedAnnotated
    String? ssSs
    String? correlationsCorrelations
    String? msaMsa
  }
  command <<<
    R-scape-sim-nobps \
      ~{thatThat} \
      ~{true="-v" false="" vV} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--onemsa" false="" oneOneMsa} \
      ~{removeRemove} \
      ~{notNot} \
      ~{annotatedAnnotated} \
      ~{ssSs} \
      ~{correlationsCorrelations} \
      ~{msaMsa}
  >>>
}