version 1.0

task Jeprof {
  input {
    Boolean cumCum
    String baseBase
    Boolean interactiveInteractive
    String secondsSeconds
    File addAddLib
    String libLibPrefix
    Boolean addressesAddresses
    Boolean linesLines
    Boolean functionsFunctions
    Boolean filesFiles
    Boolean textText
    Boolean callCallGrind
    Boolean gvGv
    Boolean evinceEvince
    Boolean webWeb
    String listList
    String disDisAsm
    Boolean symbolsSymbols
    Boolean dotDot
    Boolean psPs
    Boolean pdfPdf
    Boolean svgSvg
    Boolean gifGif
    Boolean rawRaw
    Boolean inInUseSpace
    Boolean inInUseObjects
    Boolean allocAllocSpace
    Boolean allocAllocObjects
    Boolean showShowBytes
    Boolean dropDropNegative
    Boolean totalTotalDelay
    Boolean contentionsContentions
    Boolean meanMeanDelay
    String nodeNodeCount
    String nodeNodeFraction
    String edgeEdgeFraction
    String maxMaxDegree
    String focusFocus
    String threadThread
    String ignoreIgnore
    String scaleScale
    Boolean heapHeapCheck
    String retainRetain
    String excludeExclude
    Boolean toolsTools
    Boolean testTest
    String? jeJeProfTmpdir
    String? jeJeProfTools
  }
  command <<<
    jeprof \
      ~{jeJeProfTmpdir} \
      ~{true="--cum" false="" cumCum} \
      ~{if defined(baseBase) then ("--base " +  '"' + baseBase + '"') else ""} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{if defined(secondsSeconds) then ("--seconds " +  '"' + secondsSeconds + '"') else ""} \
      ~{if defined(addAddLib) then ("--add_lib " +  '"' + addAddLib + '"') else ""} \
      ~{if defined(libLibPrefix) then ("--lib_prefix " +  '"' + libLibPrefix + '"') else ""} \
      ~{true="--addresses" false="" addressesAddresses} \
      ~{true="--lines" false="" linesLines} \
      ~{true="--functions" false="" functionsFunctions} \
      ~{true="--files" false="" filesFiles} \
      ~{true="--text" false="" textText} \
      ~{true="--callgrind" false="" callCallGrind} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--evince" false="" evinceEvince} \
      ~{true="--web" false="" webWeb} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(disDisAsm) then ("--disasm " +  '"' + disDisAsm + '"') else ""} \
      ~{true="--symbols" false="" symbolsSymbols} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--ps" false="" psPs} \
      ~{true="--pdf" false="" pdfPdf} \
      ~{true="--svg" false="" svgSvg} \
      ~{true="--gif" false="" gifGif} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--inuse_space" false="" inInUseSpace} \
      ~{true="--inuse_objects" false="" inInUseObjects} \
      ~{true="--alloc_space" false="" allocAllocSpace} \
      ~{true="--alloc_objects" false="" allocAllocObjects} \
      ~{true="--show_bytes" false="" showShowBytes} \
      ~{true="--drop_negative" false="" dropDropNegative} \
      ~{true="--total_delay" false="" totalTotalDelay} \
      ~{true="--contentions" false="" contentionsContentions} \
      ~{true="--mean_delay" false="" meanMeanDelay} \
      ~{if defined(nodeNodeCount) then ("--nodecount " +  '"' + nodeNodeCount + '"') else ""} \
      ~{if defined(nodeNodeFraction) then ("--nodefraction " +  '"' + nodeNodeFraction + '"') else ""} \
      ~{if defined(edgeEdgeFraction) then ("--edgefraction " +  '"' + edgeEdgeFraction + '"') else ""} \
      ~{if defined(maxMaxDegree) then ("--maxdegree " +  '"' + maxMaxDegree + '"') else ""} \
      ~{if defined(focusFocus) then ("--focus " +  '"' + focusFocus + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{true="--heapcheck" false="" heapHeapCheck} \
      ~{if defined(retainRetain) then ("--retain " +  '"' + retainRetain + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--tools" false="" toolsTools} \
      ~{true="--test" false="" testTest} \
      ~{jeJeProfTools}
  >>>
}