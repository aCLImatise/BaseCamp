version 1.0

task Dba {
  input {
    Boolean matchMatchA
    Boolean matchMatchB
    Boolean matchMatchC
    Boolean matchMatchD
    Boolean gapGapA
    Boolean gapGapAa
    Boolean gapGap
    Boolean blockBlockOpen
    Boolean uUMatch
    Boolean singleSingle
    Boolean noNoMatchN
    Boolean alignAlign
    Boolean anchorAnchor
    Boolean prettyPretty
    Boolean pffPff
    Boolean labelLabel
    Boolean slimSlim
    Boolean bigBig
    Boolean paramsParams
    Boolean dyDyDebug
    Boolean palPalDebug
    Boolean versionVersion
    Boolean silentSilent
    Boolean quietQuiet
    String errorErrorOffStd
    Boolean errorErrorLog
    Boolean errorErrorStyle
  }
  command <<<
    dba \
      ~{true="-matchA" false="" matchMatchA} \
      ~{true="-matchB" false="" matchMatchB} \
      ~{true="-matchC" false="" matchMatchC} \
      ~{true="-matchD" false="" matchMatchD} \
      ~{true="-gapA" false="" gapGapA} \
      ~{true="-gapAA" false="" gapGapAa} \
      ~{true="-gap" false="" gapGap} \
      ~{true="-blockopen" false="" blockBlockOpen} \
      ~{true="-umatch" false="" uUMatch} \
      ~{true="-single" false="" singleSingle} \
      ~{true="-nomatchn" false="" noNoMatchN} \
      ~{true="-align" false="" alignAlign} \
      ~{true="-anchor" false="" anchorAnchor} \
      ~{true="-pretty" false="" prettyPretty} \
      ~{true="-pff" false="" pffPff} \
      ~{true="-label" false="" labelLabel} \
      ~{true="-slim" false="" slimSlim} \
      ~{true="-big" false="" bigBig} \
      ~{true="-params" false="" paramsParams} \
      ~{true="-dydebug" false="" dyDyDebug} \
      ~{true="-paldebug" false="" palPalDebug} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(errorErrorOffStd) then ("-erroroffstd " +  '"' + errorErrorOffStd + '"') else ""} \
      ~{true="-errorlog" false="" errorErrorLog} \
      ~{true="-errorstyle" false="" errorErrorStyle}
  >>>
}