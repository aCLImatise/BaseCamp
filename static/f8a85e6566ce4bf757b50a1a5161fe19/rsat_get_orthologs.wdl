version 1.0

task RsatGetorthologs {
  input {
    Boolean? unique_species
    String? return
    String get_orthologs
    String ref_id
    String ref_organism
    String query_id
    String query_name
    String ref_name
    String query_organism
    String ident
    String ali_len
    String mism_at
    String gap_open
    String e_value
    String bit_sc
    String rank
    String s_rank
  }
  command <<<
    rsat get_orthologs \
      ~{get_orthologs} \
      ~{ref_id} \
      ~{ref_organism} \
      ~{query_id} \
      ~{query_name} \
      ~{ref_name} \
      ~{query_organism} \
      ~{ident} \
      ~{ali_len} \
      ~{mism_at} \
      ~{gap_open} \
      ~{e_value} \
      ~{bit_sc} \
      ~{rank} \
      ~{s_rank} \
      ~{if (unique_species) then "-unique_species" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unique_species: ", but at the level of the genus. At this level we"
    return: ",e_value,rank"
    get_orthologs: "[1mDESCRIPTION[0m"
    ref_id: "ID of the reference (target) gene"
    ref_organism: "Name of the reference (target) organism"
    query_id: "ID of the query gene"
    query_name: "Common name of the query gene"
    ref_name: "Common name of the gene found in the reference genome.\\n[1mBeware:[0m this output field requires to load synonym tables\\nfor all the organisms of the reference taxon, which\\nincreases the running time (a few seconds per taxon)."
    query_organism: "Name of the query organism"
    ident: "Percent of identity (a number between 0 and 100)"
    ali_len: "Alignment lengths (in residues)"
    mism_at: "Number of mismatches"
    gap_open: "Number of gap openings"
    e_value: "E-value (expected number of false positives)"
    bit_sc: "Bit score"
    rank: "Rank"
    s_rank: "Source rank (rank of the hit for the query organism)."
  }
  output {
    File out_stdout = stdout()
  }
}