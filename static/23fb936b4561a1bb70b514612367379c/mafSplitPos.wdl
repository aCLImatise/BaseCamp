version 1.0

task MafSplitPos {
  input {
    String chromChrom
    String minMinGap
    String minMinRepeat
  }
  command <<<
    mafSplitPos \
      ~{if defined(chromChrom) then ("-chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(minMinGap) then ("-minGap " +  '"' + minMinGap + '"') else ""} \
      ~{if defined(minMinRepeat) then ("-minRepeat " +  '"' + minMinRepeat + '"') else ""}
  >>>
}