version 1.0

task GetMeanAndStdevForGapsByGapNumUsingCeleraAsmFileperl {
  input {
    File? contig_end_seq_file
  }
  command <<<
    getMeanAndStdevForGapsByGapNumUsingCeleraAsmFile_perl \
      ~{if defined(contig_end_seq_file) then ("--contig-end-seq-file " +  '"' + contig_end_seq_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_end_seq_file: "; the file that contains the contig end\\nsequences to be joined by the gap closer\\n"
  }
  output {
    File out_stdout = stdout()
  }
}