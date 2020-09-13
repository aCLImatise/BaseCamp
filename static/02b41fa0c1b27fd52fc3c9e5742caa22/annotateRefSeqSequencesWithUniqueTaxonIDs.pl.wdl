version 1.0

task AnnotateRefSeqSequencesWithUniqueTaxonIDspl {
  input {
    String? taxonomy_in_directory
    String? refseq_directory
  }
  command <<<
    annotateRefSeqSequencesWithUniqueTaxonIDs_pl \
      ~{if defined(taxonomy_in_directory) then ("--taxonomyInDirectory " +  '"' + taxonomy_in_directory + '"') else ""} \
      ~{if defined(refseq_directory) then ("--refSeqDirectory " +  '"' + refseq_directory + '"') else ""}
  >>>
  parameter_meta {
    taxonomy_in_directory: ""
    refseq_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}