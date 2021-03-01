version 1.0

task Iufiltermergedreads {
  input {
    File? where_filtered_reads
    Int? max_mismatches
    String file_path
  }
  command <<<
    iu_filter_merged_reads \
      ~{file_path} \
      ~{if defined(where_filtered_reads) then ("--output " +  '"' + where_filtered_reads + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    where_filtered_reads: "Where filtered reads will be written (default:\\n[-i]-MAX-MISMATCH-[-m]"
    max_mismatches: "Maximum number of mismatches allowed in the overlapped\\nregion\\n"
    file_path: "FASTA file to be filtered"
  }
  output {
    File out_stdout = stdout()
  }
}