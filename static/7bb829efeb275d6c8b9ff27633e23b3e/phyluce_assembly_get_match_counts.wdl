version 1.0

task PhyluceAssemblyGetMatchCounts {
  input {
    String? locus_db
  }
  command <<<
    phyluce_assembly_get_match_counts \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""}
  >>>
  parameter_meta {
    locus_db: ""
  }
}