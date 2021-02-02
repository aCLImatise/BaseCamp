version 1.0

task DownloadRefSeqpl {
  input {
    String? seq_ences_out_directory
    Boolean? var_1
    String name_ncbi_database
    String sequences_out_directory
    String taxonomy_out_directory
    String target_branches
    String skip_incomplete_genomes
  }
  command <<<
    downloadRefSeq_pl \
      ~{name_ncbi_database} \
      ~{sequences_out_directory} \
      ~{taxonomy_out_directory} \
      ~{target_branches} \
      ~{skip_incomplete_genomes} \
      ~{if defined(seq_ences_out_directory) then ("--seqencesOutDirectory " +  '"' + seq_ences_out_directory + '"') else ""} \
      ~{if (var_1) then "--DB" else ""}
  >>>
  parameter_meta {
    seq_ences_out_directory: ""
    var_1: ""
    name_ncbi_database: "Name of NCBI database to be downloaded. Default: refseq."
    sequences_out_directory: "Output directory for sequences"
    taxonomy_out_directory: "Output directory for taxonomy"
    target_branches: "Specification of target branches (comma-separated), e.g. archaea,bacteria,fungi"
    skip_incomplete_genomes: "Skip incomplete genomes. Default: 0."
  }
  output {
    File out_stdout = stdout()
  }
}