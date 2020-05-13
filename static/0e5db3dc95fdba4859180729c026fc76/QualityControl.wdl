version 1.0

task QualityControl {
  input {
    File inInCm
    File inInRaw
    File inInPostFdr
    File outOut
    File outOutCm
    File outOutFeat
    Boolean fragmentFragmentMassError
    Boolean fragmentFragmentMassError
    File inInContaminants
    File inInTrafO
    Boolean ms2Ms2IdRate
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    QualityControl \
      ~{if defined(inInCm) then ("-in_cm " +  '"' + inInCm + '"') else ""} \
      ~{if defined(inInRaw) then ("-in_raw " +  '"' + inInRaw + '"') else ""} \
      ~{if defined(inInPostFdr) then ("-in_postFDR " +  '"' + inInPostFdr + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutCm) then ("-out_cm " +  '"' + outOutCm + '"') else ""} \
      ~{if defined(outOutFeat) then ("-out_feat " +  '"' + outOutFeat + '"') else ""} \
      ~{true="-FragmentMassError" false="" fragmentFragmentMassError} \
      ~{true="-FragmentMassError" false="" fragmentFragmentMassError} \
      ~{if defined(inInContaminants) then ("-in_contaminants " +  '"' + inInContaminants + '"') else ""} \
      ~{if defined(inInTrafO) then ("-in_trafo " +  '"' + inInTrafO + '"') else ""} \
      ~{true="-MS2_id_rate" false="" ms2Ms2IdRate} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}