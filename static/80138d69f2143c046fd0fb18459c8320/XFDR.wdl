version 1.0

task XFDR {
  input {
    File inIn
    String inInType
    String outOutIdxml
    String outOutMzIdentMl
    String outOutXQuest
    String decoyDecoyString
    String minMinBorder
    String maxMaxBorder
    String minMinDeltas
    String minionsMinionsMatched
    Boolean uniqueUniqueXl
    Boolean noNoQValues
    String minMinScore
    String binsizeBinsize
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    XFDR \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOutIdxml) then ("-out_idXML " +  '"' + outOutIdxml + '"') else ""} \
      ~{if defined(outOutMzIdentMl) then ("-out_mzIdentML " +  '"' + outOutMzIdentMl + '"') else ""} \
      ~{if defined(outOutXQuest) then ("-out_xquest " +  '"' + outOutXQuest + '"') else ""} \
      ~{if defined(decoyDecoyString) then ("-decoy_string " +  '"' + decoyDecoyString + '"') else ""} \
      ~{if defined(minMinBorder) then ("-minborder " +  '"' + minMinBorder + '"') else ""} \
      ~{if defined(maxMaxBorder) then ("-maxborder " +  '"' + maxMaxBorder + '"') else ""} \
      ~{if defined(minMinDeltas) then ("-mindeltas " +  '"' + minMinDeltas + '"') else ""} \
      ~{if defined(minionsMinionsMatched) then ("-minionsmatched " +  '"' + minionsMinionsMatched + '"') else ""} \
      ~{true="-uniquexl" false="" uniqueUniqueXl} \
      ~{true="-no_qvalues" false="" noNoQValues} \
      ~{if defined(minMinScore) then ("-minscore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("-binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}