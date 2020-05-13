version 1.0

task NGSadmix {
  input {
    String likesLikes
    String kK
    String fnameFname
    String qnameQname
    String outOutFiles
    String printPrintInfo
    String seedSeed
    String pP
    String methodMethod
    String mistMistOl
    String toToLlike50
    String toToL
    String dymDymBound
    Int maxiterMaxiter
    Int minMinMaf
    Int minMinLrt
    Int miniMiniNd
  }
  command <<<
    NGSadmix \
      ~{if defined(likesLikes) then ("-likes " +  '"' + likesLikes + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(fnameFname) then ("-fname " +  '"' + fnameFname + '"') else ""} \
      ~{if defined(qnameQname) then ("-qname " +  '"' + qnameQname + '"') else ""} \
      ~{if defined(outOutFiles) then ("-outfiles " +  '"' + outOutFiles + '"') else ""} \
      ~{if defined(printPrintInfo) then ("-printInfo " +  '"' + printPrintInfo + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(mistMistOl) then ("-misTol " +  '"' + mistMistOl + '"') else ""} \
      ~{if defined(toToLlike50) then ("-tolLike50 " +  '"' + toToLlike50 + '"') else ""} \
      ~{if defined(toToL) then ("-tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(dymDymBound) then ("-dymBound " +  '"' + dymDymBound + '"') else ""} \
      ~{if defined(maxiterMaxiter) then ("-maxiter " +  '"' + maxiterMaxiter + '"') else ""} \
      ~{if defined(minMinMaf) then ("-minMaf " +  '"' + minMinMaf + '"') else ""} \
      ~{if defined(minMinLrt) then ("-minLrt " +  '"' + minMinLrt + '"') else ""} \
      ~{if defined(miniMiniNd) then ("-minInd " +  '"' + miniMiniNd + '"') else ""}
  >>>
}