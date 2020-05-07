version 1.0

task JoinPairedEnds.py {
  input {
    String forwardForwardReadsFp
    String reverseReverseReadsFp
    String outputOutputDir
  }
  command <<<
    join_paired_ends.py \
      ~{if defined(forwardForwardReadsFp) then ("--forward_reads_fp " +  '"' + forwardForwardReadsFp + '"') else ""} \
      ~{if defined(reverseReverseReadsFp) then ("--reverse_reads_fp " +  '"' + reverseReverseReadsFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}