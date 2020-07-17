version 1.0

task AnnotateRefSeqSequencesWithUniqueTaxonIDs.pl {
  input {
    String? refseq_directory
    String? taxonomy_in_directory
    String? taxonomy_out_directory
  }
  command <<<
    annotateRefSeqSequencesWithUniqueTaxonIDs.pl \
      ~{if defined(refseq_directory) then ("--refSeqDirectory " +  '"' + refseq_directory + '"') else ""} \
      ~{if defined(taxonomy_in_directory) then ("--taxonomyInDirectory " +  '"' + taxonomy_in_directory + '"') else ""} \
      ~{if defined(taxonomy_out_directory) then ("--taxonomyOutDirectory " +  '"' + taxonomy_out_directory + '"') else ""}
  >>>
  parameter_meta {
    refseq_directory: ""
    taxonomy_in_directory: ""
    taxonomy_out_directory: ""
  }
}