version 1.0

task Scanwise {
  input {
    File multiserverMultiserver
    Boolean seqSeqDb
    Boolean seqSeqDbmAt
    Boolean hspsHspsCanImpl
    Boolean hspsHspsCanMaxRes
    Boolean hspsHspsCanNumb
    Boolean hspsHspsCanWordDepth
    Boolean hspsHspsCanMinWord
    Boolean hspsHspsCanMinhSp
    Boolean hspsHspsCanLinkWidth
    Boolean hspsHspsCanLinkLength
    Boolean hspsHspsCanVerbosity
    Boolean hspsHspsCanLowNumb
    Boolean hspsHspsCanAvgExt
    Boolean hspHspConvert
    Boolean hspHspThread
    Boolean hspHspThreadNo
    Boolean hitHitOutput
    Boolean hitHitHelp
    Boolean dyDyDebug
    Boolean palPalDebug
    Boolean versionVersion
    Boolean silentSilent
    Boolean quietQuiet
    String errorErrorOffStd
    Boolean errorErrorLog
    Boolean errorErrorStyle
    Boolean piPiType
    Boolean piPiWayPost
    Boolean piPiShadow
    Boolean piPiShadowErr
    Boolean piPiSeqMax
    Boolean piPiSeqMaxLen
  }
  command <<<
    scanwise \
      ~{if defined(multiserverMultiserver) then ("-multiserver " +  '"' + multiserverMultiserver + '"') else ""} \
      ~{true="-seqdb" false="" seqSeqDb} \
      ~{true="-seqdbmat" false="" seqSeqDbmAt} \
      ~{true="-hspscan_impl" false="" hspsHspsCanImpl} \
      ~{true="-hspscan_maxres" false="" hspsHspsCanMaxRes} \
      ~{true="-hspscan_numb" false="" hspsHspsCanNumb} \
      ~{true="-hspscan_worddepth" false="" hspsHspsCanWordDepth} \
      ~{true="-hspscan_minword" false="" hspsHspsCanMinWord} \
      ~{true="-hspscan_minhsp" false="" hspsHspsCanMinhSp} \
      ~{true="-hspscan_link_width" false="" hspsHspsCanLinkWidth} \
      ~{true="-hspscan_link_length" false="" hspsHspsCanLinkLength} \
      ~{true="-hspscan_verbosity" false="" hspsHspsCanVerbosity} \
      ~{true="-hspscan_lownumb" false="" hspsHspsCanLowNumb} \
      ~{true="-hspscan_avgext" false="" hspsHspsCanAvgExt} \
      ~{true="-hspconvert" false="" hspHspConvert} \
      ~{true="-hspthread" false="" hspHspThread} \
      ~{true="-hspthreadno" false="" hspHspThreadNo} \
      ~{true="-hitoutput" false="" hitHitOutput} \
      ~{true="-hithelp" false="" hitHitHelp} \
      ~{true="-dydebug" false="" dyDyDebug} \
      ~{true="-paldebug" false="" palPalDebug} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(errorErrorOffStd) then ("-erroroffstd " +  '"' + errorErrorOffStd + '"') else ""} \
      ~{true="-errorlog" false="" errorErrorLog} \
      ~{true="-errorstyle" false="" errorErrorStyle} \
      ~{true="-pitype" false="" piPiType} \
      ~{true="-piwaypost" false="" piPiWayPost} \
      ~{true="-pishadow" false="" piPiShadow} \
      ~{true="-pishadow_err" false="" piPiShadowErr} \
      ~{true="-piseqmax" false="" piPiSeqMax} \
      ~{true="-piseqmax_len" false="" piPiSeqMaxLen}
  >>>
}