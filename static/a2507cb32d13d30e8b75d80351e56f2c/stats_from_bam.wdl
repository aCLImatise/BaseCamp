version 1.0

task StatsFromBam {
  input {
    Boolean allAllAlignments
    String outputOutput
    String summarySummary
    String threadsThreads
    String? bamBam
  }
  command <<<
    stats_from_bam \
      ~{bamBam} \
      ~{true="--all_alignments" false="" allAllAlignments} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}