version 1.0

task IuFilterMergedReads {
  input {
    File? where_filtered_reads
    Int? max_mismatches
    File file_path
  }
  command <<<
    iu-filter-merged-reads \
      ~{file_path} \
      ~{if defined(where_filtered_reads) then ("--output " +  '"' + where_filtered_reads + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""}
  >>>
  parameter_meta {
    where_filtered_reads: "Where filtered reads will be written (default: [-i]-MAX-MISMATCH-[-m]"
    max_mismatches: "Maximum number of mismatches allowed in the overlapped region"
    file_path: "FASTA file to be filtered"
  }
}