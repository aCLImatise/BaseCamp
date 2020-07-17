version 1.0

task ContigBreakFinder {
  input {
    File? skip
    Int? hit_percent_id
    Int? min_hit_length
    Boolean? no_random_gene
    Boolean? no_rename
    Boolean? debug
  }
  command <<<
    contig_break_finder \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(hit_percent_id) then ("--hit_percent_id " +  '"' + hit_percent_id + '"') else ""} \
      ~{if defined(min_hit_length) then ("--min_hit_length " +  '"' + min_hit_length + '"') else ""} \
      ~{true="--no_random_gene" false="" no_random_gene} \
      ~{true="--no_rename" false="" no_rename} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    skip: "File of contig ids to skip"
    hit_percent_id: "Minimum acceptable hit percent id [80]"
    min_hit_length: "Minimum acceptable hit length expressed as percentage of gene length [100]"
    no_random_gene: "Do not run prodigal to get the start of a random gene if it cannot find genes in list"
    no_rename: "Do not rename contigs to indicate chromosome/plasmid"
    debug: "Keep all temp files"
  }
}