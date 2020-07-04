version 1.0

task DownloadRefSeq.pl {
  input {
    Boolean? var_0
    String? seq_ences_out_directory
    String? var_2
    String name_downloaded_refseq
    String sequences_out_directory
    String output_directory_taxonomy
    String target_branches
    String skip_incomplete_genomes
  }
  command <<<
    downloadRefSeq.pl \
      ~{name_downloaded_refseq} \
      ~{sequences_out_directory} \
      ~{output_directory_taxonomy} \
      ~{target_branches} \
      ~{skip_incomplete_genomes} \
      ~{true="--DB" false="" var_0} \
      ~{if defined(seq_ences_out_directory) then ("--seqencesOutDirectory " +  '"' + seq_ences_out_directory + '"') else ""} \
      ~{if defined(var_2) then ("--taxonomyOutDirectory " +  '"' + var_2 + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    seq_ences_out_directory: ""
    var_2: ""
    name_downloaded_refseq: "Name of NCBI database to be downloaded. Default: refseq."
    sequences_out_directory: "Output directory for sequences"
    output_directory_taxonomy: "Output directory for taxonomy"
    target_branches: "Specification of target branches (comma-separated), e.g. archaea,bacteria,fungi"
    skip_incomplete_genomes: "Skip incomplete genomes. Default: 0."
  }
}