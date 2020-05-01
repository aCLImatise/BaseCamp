version 1.0

task TbprofilerSummariseMutations.py {
  input {
    String dirDir
    String summarySummary
    Boolean pctPct
    String columnsColumns
    Boolean nonNonDr
    String? samplesSamples
  }
  command <<<
    tbprofiler_summarise_mutations.py \
      ~{samplesSamples} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{true="--pct" false="" pctPct} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{true="--non-dr" false="" nonNonDr}
  >>>
}