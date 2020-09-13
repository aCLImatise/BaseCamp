version 1.0

task ReferenceseekerDbImport {
  input {
    File? db
    File? genome
    String? id
    Int? taxonomy
    String? status
    String? organism
  }
  command <<<
    referenceseeker_db import \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(status) then ("--status " +  '"' + status + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""}
  >>>
  parameter_meta {
    db: "ReferenceSeeker database path"
    genome: "Genome path [Fasta, GenBank, EMBL]"
    id: "Unique genome identifier (default sequence id of first\\nrecord)"
    taxonomy: "Taxonomy ID (default = 12908 [unclassified sequences])"
    status: "Assembly level (default = contig)"
    organism: "Organism name (default = \\\"\\\")\\n"
  }
  output {
    File out_stdout = stdout()
  }
}