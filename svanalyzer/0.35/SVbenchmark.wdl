version 1.0

task SVbenchmark {
  input {
    File refRef
    File testTest
    File truthTruth
    Int maxMaxDist
    Int minsizeMinsize
    String prefixPrefix
    String includeIncludeBed
    String testTestFilter
    String truthTruthFilter
    String normNormShift
    String normNormSizeDiff
    String normNormSizeDist
  }
  command <<<
    SVbenchmark \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(testTest) then ("--test " +  '"' + testTest + '"') else ""} \
      ~{if defined(truthTruth) then ("--truth " +  '"' + truthTruth + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--maxdist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(minsizeMinsize) then ("--minsize " +  '"' + minsizeMinsize + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(includeIncludeBed) then ("--includebed " +  '"' + includeIncludeBed + '"') else ""} \
      ~{if defined(testTestFilter) then ("--testfilter " +  '"' + testTestFilter + '"') else ""} \
      ~{if defined(truthTruthFilter) then ("--truthfilter " +  '"' + truthTruthFilter + '"') else ""} \
      ~{if defined(normNormShift) then ("--normshift " +  '"' + normNormShift + '"') else ""} \
      ~{if defined(normNormSizeDiff) then ("--normsizediff " +  '"' + normNormSizeDiff + '"') else ""} \
      ~{if defined(normNormSizeDist) then ("--normsizedist " +  '"' + normNormSizeDist + '"') else ""}
  >>>
}