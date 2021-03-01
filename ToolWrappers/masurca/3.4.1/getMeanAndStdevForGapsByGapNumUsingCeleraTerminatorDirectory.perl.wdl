version 1.0

task GetMeanAndStdevForGapsByGapNumUsingCeleraTerminatorDirectoryperl {
  input {
    File? contig_end_seq_file
    Boolean? reduced_column_output
  }
  command <<<
    getMeanAndStdevForGapsByGapNumUsingCeleraTerminatorDirectory_perl \
      ~{if defined(contig_end_seq_file) then ("--contig-end-seq-file " +  '"' + contig_end_seq_file + '"') else ""} \
      ~{if (reduced_column_output) then "--reduced-column-output" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_end_seq_file: "; the file that contains the contig end\\nsequences to be joined by the gap closer"
    reduced_column_output: ": Output just the gapNum mean and stdev for each gap"
  }
  output {
    File out_stdout = stdout()
  }
}