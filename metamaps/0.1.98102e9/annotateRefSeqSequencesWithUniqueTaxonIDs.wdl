version 1.0

task AnnotateRefSeqSequencesWithUniqueTaxonIDs.pl {
  input {
    String refseqRefseqDirectory
    String taxonomyTaxonomyInDirectory
    String taxonomyTaxonomyOutDirectory
    String? perlPerl
    String? annotateAnnotateRefseqSequencesWithUniqueTaxonidSpl
  }
  command <<<
    annotateRefSeqSequencesWithUniqueTaxonIDs.pl \
      ~{perlPerl} \
      ~{if defined(refseqRefseqDirectory) then ("--refSeqDirectory " +  '"' + refseqRefseqDirectory + '"') else ""} \
      ~{if defined(taxonomyTaxonomyInDirectory) then ("--taxonomyInDirectory " +  '"' + taxonomyTaxonomyInDirectory + '"') else ""} \
      ~{if defined(taxonomyTaxonomyOutDirectory) then ("--taxonomyOutDirectory " +  '"' + taxonomyTaxonomyOutDirectory + '"') else ""} \
      ~{annotateAnnotateRefseqSequencesWithUniqueTaxonidSpl}
  >>>
}