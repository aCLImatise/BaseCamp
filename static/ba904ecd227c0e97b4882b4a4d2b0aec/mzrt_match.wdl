version 1.0

task MzrtMatch.py {
  input {
    String anno1Anno1
    String anno2Anno2
    String uniqid1Uniqid1
    String mzid1Mzid1
    String rtid1Rtid1
    String uniqid2Uniqid2
    String mzid2Mzid2
    String rtid2Rtid2
    String allAll
    String matchedMatched
    String unmatchedUnmatched1
    String unmatchedUnmatched2
    String summarySummary
    String figureFigure
    String mzMzCut
    String rtRtCut
    String nameName1
    String nameName2
  }
  command <<<
    mzrt_match.py \
      ~{if defined(anno1Anno1) then ("--anno1 " +  '"' + anno1Anno1 + '"') else ""} \
      ~{if defined(anno2Anno2) then ("--anno2 " +  '"' + anno2Anno2 + '"') else ""} \
      ~{if defined(uniqid1Uniqid1) then ("--uniqID1 " +  '"' + uniqid1Uniqid1 + '"') else ""} \
      ~{if defined(mzid1Mzid1) then ("--mzID1 " +  '"' + mzid1Mzid1 + '"') else ""} \
      ~{if defined(rtid1Rtid1) then ("--rtID1 " +  '"' + rtid1Rtid1 + '"') else ""} \
      ~{if defined(uniqid2Uniqid2) then ("--uniqID2 " +  '"' + uniqid2Uniqid2 + '"') else ""} \
      ~{if defined(mzid2Mzid2) then ("--mzID2 " +  '"' + mzid2Mzid2 + '"') else ""} \
      ~{if defined(rtid2Rtid2) then ("--rtID2 " +  '"' + rtid2Rtid2 + '"') else ""} \
      ~{if defined(allAll) then ("--all " +  '"' + allAll + '"') else ""} \
      ~{if defined(matchedMatched) then ("--matched " +  '"' + matchedMatched + '"') else ""} \
      ~{if defined(unmatchedUnmatched1) then ("--unmatched1 " +  '"' + unmatchedUnmatched1 + '"') else ""} \
      ~{if defined(unmatchedUnmatched2) then ("--unmatched2 " +  '"' + unmatchedUnmatched2 + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(mzMzCut) then ("--mzcut " +  '"' + mzMzCut + '"') else ""} \
      ~{if defined(rtRtCut) then ("--rtcut " +  '"' + rtRtCut + '"') else ""} \
      ~{if defined(nameName1) then ("--name1 " +  '"' + nameName1 + '"') else ""} \
      ~{if defined(nameName2) then ("--name2 " +  '"' + nameName2 + '"') else ""}
  >>>
}