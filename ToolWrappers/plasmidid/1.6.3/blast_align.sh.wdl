version 1.0

task BlastAlignsh {
  input {
    Int? file_fasta_formatd
  }
  command <<<
    blast_align_sh \
      ~{if defined(file_fasta_formatd) then ("-i " +  '"' + file_fasta_formatd + '"') else ""}
  >>>
  parameter_meta {
    file_fasta_formatd: "file in FASTA format\\n-d database to blast against\\n-o output directory, default same directory as query\\n-p prefix for blast identification (mandatory) and output file name\\n-q type of query, nucl by default\\n-t type of database, nucl by default\\n-e evalue for blast analysis, default 0.0001\\n-T number of threads\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}