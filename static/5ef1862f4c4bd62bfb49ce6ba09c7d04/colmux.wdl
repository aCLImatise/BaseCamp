version 1.0

task Colmux {
  input {
    Boolean addressAddress
    Boolean commandCommand
    Boolean hostHostWidth
    Boolean linesLines
    Boolean noNoEscape
    Boolean portPort
    Boolean sshSshKey
    Boolean sudoSudo
    Boolean testTest
    Boolean usernameUsername
    Boolean versionVersion
    Boolean delayDelay
    Boolean homeHome
    Array[String]+ hostHostFilter
    Boolean noNoSort
    Boolean colColHelp
    Boolean columnColumn
    Boolean finalFinalCr
    String hostHostFormat
    Boolean noNoBold
    Boolean reverseReverse
    Boolean zeroZero
    Boolean col1000Col1000
    Boolean colColK
    Boolean collog10Collog10
    Boolean colsCols
    Boolean colColNodeT
    Boolean colColNoDiv
    Boolean colColNoInst
    Boolean colColTotal
    Boolean colColWidth
    Boolean ageAge
    String negNegDataVal
    Boolean noNoDataVal
    Boolean debugDebug
    Boolean noNoCheck
    Boolean quietQuiet
    Boolean reachableReachable
    Boolean colColBin
    Boolean keepaliveKeepalive
    Boolean retRetAddr
    Boolean timeoutTimeout
    Boolean timeTimeRange
  }
  command <<<
    colmux \
      ~{true="-address" false="" addressAddress} \
      ~{true="-command" false="" commandCommand} \
      ~{true="-hostwidth" false="" hostHostWidth} \
      ~{true="-lines" false="" linesLines} \
      ~{true="-noescape" false="" noNoEscape} \
      ~{true="-port" false="" portPort} \
      ~{true="-sshkey" false="" sshSshKey} \
      ~{true="-sudo" false="" sudoSudo} \
      ~{true="-test" false="" testTest} \
      ~{true="-username" false="" usernameUsername} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-delay" false="" delayDelay} \
      ~{true="-home" false="" homeHome} \
      ~{if defined(hostHostFilter) then ("-hostfilter " +  '"' + hostHostFilter + '"') else ""} \
      ~{true="-nosort" false="" noNoSort} \
      ~{true="-colhelp" false="" colColHelp} \
      ~{true="-column" false="" columnColumn} \
      ~{true="-finalcr" false="" finalFinalCr} \
      ~{if defined(hostHostFormat) then ("-hostformat " +  '"' + hostHostFormat + '"') else ""} \
      ~{true="-nobold" false="" noNoBold} \
      ~{true="-reverse" false="" reverseReverse} \
      ~{true="-zero" false="" zeroZero} \
      ~{true="-col1000" false="" col1000Col1000} \
      ~{true="-colk" false="" colColK} \
      ~{true="-collog10" false="" collog10Collog10} \
      ~{true="-cols" false="" colsCols} \
      ~{true="-colnodet" false="" colColNodeT} \
      ~{true="-colnodiv" false="" colColNoDiv} \
      ~{true="-colnoinst" false="" colColNoInst} \
      ~{true="-coltotal" false="" colColTotal} \
      ~{true="-colwidth" false="" colColWidth} \
      ~{true="-age" false="" ageAge} \
      ~{if defined(negNegDataVal) then ("-negdataval " +  '"' + negNegDataVal + '"') else ""} \
      ~{true="-nodataval" false="" noNoDataVal} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-nocheck" false="" noNoCheck} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-reachable" false="" reachableReachable} \
      ~{true="-colbin" false="" colColBin} \
      ~{true="-keepalive" false="" keepaliveKeepalive} \
      ~{true="-retaddr" false="" retRetAddr} \
      ~{true="-timeout" false="" timeoutTimeout} \
      ~{true="-timerange" false="" timeTimeRange}
  >>>
}