version 1.0

task FindIndels {
  input {
    Int minMinInDelLength
    Boolean allAllAlignments
    String outputOutput
    String bedBed
    String threadsThreads
    String? bamBam
  }
  command <<<
    find_indels \
      ~{bamBam} \
      ~{if defined(minMinInDelLength) then ("--min_indel_length " +  '"' + minMinInDelLength + '"') else ""} \
      ~{true="--all_alignments" false="" allAllAlignments} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}