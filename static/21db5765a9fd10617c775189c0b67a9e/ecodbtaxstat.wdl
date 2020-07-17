version 1.0

task Ecodbtaxstat {
  input {
    String? rank
    File? database
    File? taxonomy_dump
    String? require_rank
    String? required
    String? ignore
  }
  command <<<
    ecodbtaxstat \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""} \
      ~{if defined(require_rank) then ("--require-rank " +  '"' + require_rank + '"') else ""} \
      ~{if defined(required) then ("--required " +  '"' + required + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""}
  >>>
  parameter_meta {
    rank: "The taxonomic rank at which frequencies have to be computed. Possible values are: class, family, forma, genus, infraclass, infraorder, kingdom, order, parvorder, phylum, species, species group, species subgroup, subclass, subfamily, subgenus, subkingdom, suborder, subphylum, subspecies, subtribe, superclass, superfamily, superkingdom, superorder, superphylum, tribe or varietas. (Default: species)"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
    require_rank: "select sequence with taxid tag containing a parent of rank <RANK_NAME>"
    required: "Select the sequences having the ancestor of taxid <TAXID>. If several ancestors are specified (with  '-r taxid1 -r taxid2'), the sequences having at least one of them are selected"
    ignore: "ignored taxid"
  }
}