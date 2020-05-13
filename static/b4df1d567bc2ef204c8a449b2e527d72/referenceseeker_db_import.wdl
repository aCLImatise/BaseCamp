version 1.0

task ReferenceseekerDbImport {
  input {
    String dbDb
    String genomeGenome
    String idId
    String taxonomyTaxonomy
    String statusStatus
    String organismOrganism
  }
  command <<<
    referenceseeker_db import \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(statusStatus) then ("--status " +  '"' + statusStatus + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""}
  >>>
}