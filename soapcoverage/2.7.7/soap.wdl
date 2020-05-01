version 1.0

task Soap.coverage {
  input {
    String cvgCvg
    Boolean refRefSingle
    Boolean iI
    Boolean ilIl
    Boolean ilIlSingle
    Boolean ilIlSoap
    Boolean oO
    Boolean depthDepth
    Boolean depthDepthSingle
    Boolean depthDepthSingleBin
    Boolean addAddN
    Boolean depthDepthInput
    Boolean cdsCdsInput
    Boolean plotPlot
    Boolean cdsCdsPlot
    Boolean cdsCdsDetail
    Boolean windowWindow
    Boolean pP
    Boolean trimTrim
    Boolean plainPlain
    Boolean samSam
    Boolean pslPslQuery
    Boolean pslPslSub
    Boolean maqMaq
    Boolean m8M8Subject
    Boolean m8M8Query
    Boolean mummerMummerQuery
    Boolean axAxToItG
    Boolean axAxToIq
    Boolean pePeSupport
    Boolean onlyOnlyUniq
    Boolean precisePrecise
    Boolean noNoWarning
    Boolean noNoCalc
    Boolean onlyOnlyCover
    Boolean duplicateDuplicate
    Boolean insertInsertUpper
    Boolean insertInsertLower
    String? refRef
    String? refRef
  }
  command <<<
    soap.coverage \
      ~{refRef} \
      ~{refRef} \
      ~{if defined(cvgCvg) then ("-cvg " +  '"' + cvgCvg + '"') else ""} \
      ~{true="-refsingle" false="" refRefSingle} \
      ~{true="-i" false="" iI} \
      ~{true="-il" false="" ilIl} \
      ~{true="-il_single" false="" ilIlSingle} \
      ~{true="-il_soap" false="" ilIlSoap} \
      ~{true="-o" false="" oO} \
      ~{true="-depth" false="" depthDepth} \
      ~{true="-depthsingle" false="" depthDepthSingle} \
      ~{true="-depthsinglebin" false="" depthDepthSingleBin} \
      ~{true="-addn" false="" addAddN} \
      ~{true="-depthinput" false="" depthDepthInput} \
      ~{true="-cdsinput" false="" cdsCdsInput} \
      ~{true="-plot" false="" plotPlot} \
      ~{true="-cdsplot" false="" cdsCdsPlot} \
      ~{true="-cdsdetail" false="" cdsCdsDetail} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-p" false="" pP} \
      ~{true="-trim" false="" trimTrim} \
      ~{true="-plain" false="" plainPlain} \
      ~{true="-sam" false="" samSam} \
      ~{true="-pslquery" false="" pslPslQuery} \
      ~{true="-pslsub" false="" pslPslSub} \
      ~{true="-maq" false="" maqMaq} \
      ~{true="-m8subject" false="" m8M8Subject} \
      ~{true="-m8query" false="" m8M8Query} \
      ~{true="-mummerquery" false="" mummerMummerQuery} \
      ~{true="-axtoitg" false="" axAxToItG} \
      ~{true="-axtoiq" false="" axAxToIq} \
      ~{true="-pesupport" false="" pePeSupport} \
      ~{true="-onlyuniq" false="" onlyOnlyUniq} \
      ~{true="-precise" false="" precisePrecise} \
      ~{true="-nowarning" false="" noNoWarning} \
      ~{true="-nocalc" false="" noNoCalc} \
      ~{true="-onlycover" false="" onlyOnlyCover} \
      ~{true="-duplicate" false="" duplicateDuplicate} \
      ~{true="-insertupper" false="" insertInsertUpper} \
      ~{true="-insertlower" false="" insertInsertLower}
  >>>
}