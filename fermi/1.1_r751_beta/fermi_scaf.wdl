version 1.0

task FermiScaf {
  input {
    Int tT
    Int mM
    Boolean pP
    String? inInFmd
    String? inInRemappedMag
    String? avgAvg
    String? stdStd
  }
  command <<<
    fermi scaf \
      ~{inInFmd} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{inInRemappedMag} \
      ~{avgAvg} \
      ~{stdStd}
  >>>
}