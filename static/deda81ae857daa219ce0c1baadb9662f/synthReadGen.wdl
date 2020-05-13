version 1.0

task SynthReadGen {
  input {
    String idId
    String ldLd
    String imIm
    String omOm
    String isIs
    String osOs
    String ipIp
    String erEr
    String nrNr
    String rlRl
    String rsRs
    String psPs
    Boolean bB
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    synthReadGen \
      ~{inputInputFile} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(ldLd) then ("-ld " +  '"' + ldLd + '"') else ""} \
      ~{if defined(imIm) then ("-im " +  '"' + imIm + '"') else ""} \
      ~{if defined(omOm) then ("-om " +  '"' + omOm + '"') else ""} \
      ~{if defined(isIs) then ("-is " +  '"' + isIs + '"') else ""} \
      ~{if defined(osOs) then ("-os " +  '"' + osOs + '"') else ""} \
      ~{if defined(ipIp) then ("-ip " +  '"' + ipIp + '"') else ""} \
      ~{if defined(erEr) then ("-er " +  '"' + erEr + '"') else ""} \
      ~{if defined(nrNr) then ("-nr " +  '"' + nrNr + '"') else ""} \
      ~{if defined(rlRl) then ("-rl " +  '"' + rlRl + '"') else ""} \
      ~{if defined(rsRs) then ("-rs " +  '"' + rsRs + '"') else ""} \
      ~{if defined(psPs) then ("-ps " +  '"' + psPs + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{outputOutputFile}
  >>>
}