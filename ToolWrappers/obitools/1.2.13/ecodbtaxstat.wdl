version 1.0

task Ecodbtaxstat {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? rank
    File? database
    File? taxonomy_dump
    String? require_rank
    Int? required
    String? ignore
  }
  command <<<
    ecodbtaxstat \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""} \
      ~{if defined(require_rank) then ("--require-rank " +  '"' + require_rank + '"') else ""} \
      ~{if defined(required) then ("--required " +  '"' + required + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    rank: "The taxonomic rank at which frequencies have to be\\ncomputed. Possible values are: class, family, forma,\\ngenus, infraclass, infraorder, kingdom, order,\\nparvorder, phylum, species, species group, species\\nsubgroup, subclass, subfamily, subgenus, subkingdom,\\nsuborder, subphylum, subspecies, subtribe, superclass,\\nsuperfamily, superkingdom, superorder, superphylum,\\ntribe or varietas. (Default: species)"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
    require_rank: "select sequence with taxid tag containing a parent of\\nrank <RANK_NAME>"
    required: "Select the sequences having the ancestor of taxid\\n<TAXID>. If several ancestors are specified (with  '-r\\ntaxid1 -r taxid2'), the sequences having at least one\\nof them are selected"
    ignore: "ignored taxid\\n"
  }
  output {
    File out_stdout = stdout()
  }
}