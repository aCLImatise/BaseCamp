version 1.0

task LCA {
  input {
    String? assignments_sequences_ref
    String? file_entries_corresponding
    String? file_containing_name
    Boolean? mat_high
    Boolean? show_hit_read
    Boolean? no_bl_filter
    Boolean? read_input
    Boolean? lca_frac
    Boolean? id
  }
  command <<<
    LCA \
      ~{if defined(assignments_sequences_ref) then ("-i " +  '"' + assignments_sequences_ref + '"') else ""} \
      ~{if defined(file_entries_corresponding) then ("-r " +  '"' + file_entries_corresponding + '"') else ""} \
      ~{if defined(file_containing_name) then ("-o " +  '"' + file_containing_name + '"') else ""} \
      ~{true="-matHigh" false="" mat_high} \
      ~{true="-showHitRead" false="" show_hit_read} \
      ~{true="-no_bl_filter" false="" no_bl_filter} \
      ~{true="-readInput" false="" read_input} \
      ~{true="-LCAfrac" false="" lca_frac} \
      ~{true="-id" false="" id}
  >>>
  parameter_meta {
    assignments_sequences_ref: "assignments of sequences to ref database in blast .m8 tab delimited format"
    file_entries_corresponding: "file with entries corresponding to sequences in ref database, that was mapped against"
    file_containing_name: "file containing the sequence name and the assigned taxonomy against the ref database"
    mat_high: "calculate abundance of reads at different taxonomic levels. An extra file (derriving from -o) per tax level is written"
    show_hit_read: "if a hit can be uniquely assigned to a single entry in the ref database, this is reported in the -o file."
    no_bl_filter: "use only, if custom scripts were used to pre-filter filter -i file and in-built filter should be deactivated"
    read_input: "[miTag / OTU] changes the tags attached to single reads"
    lca_frac: "[0-1] the fraction of matching taxonomies required to accept this taxonomy on the different levels. Default=\"0.8\""
    id: "comma seperated list of min %identity, to accept a database hit as applicable to this taxonomic level, starting from Species and going to Kingdom. Default=\"97,95,93,91,88,78,0\""
  }
}