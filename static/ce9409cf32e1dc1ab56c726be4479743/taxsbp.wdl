version 1.0

task Taxsbp {
  input {
    String? tabseparated_fields_sequence
    String? nodesdmp_ncbi_taxonomy
    String? mergeddmp_ncbi_taxonomy
    String? approximate_number_bins
    String? maximum_bin_length
    String? fragment_sequences_pieces
    String? overlap_length_fragments
    String? precluster_sequences_splitted
    String? make_ranktaxidspecialization_exclusive
    String? specialization_name_eg
    String? previously_generated_files
    Boolean? show_programs_version
  }
  command <<<
    taxsbp \
      ~{if defined(tabseparated_fields_sequence) then ("-f " +  '"' + tabseparated_fields_sequence + '"') else ""} \
      ~{if defined(nodesdmp_ncbi_taxonomy) then ("-n " +  '"' + nodesdmp_ncbi_taxonomy + '"') else ""} \
      ~{if defined(mergeddmp_ncbi_taxonomy) then ("-m " +  '"' + mergeddmp_ncbi_taxonomy + '"') else ""} \
      ~{if defined(approximate_number_bins) then ("-b " +  '"' + approximate_number_bins + '"') else ""} \
      ~{if defined(maximum_bin_length) then ("-l " +  '"' + maximum_bin_length + '"') else ""} \
      ~{if defined(fragment_sequences_pieces) then ("-a " +  '"' + fragment_sequences_pieces + '"') else ""} \
      ~{if defined(overlap_length_fragments) then ("-o " +  '"' + overlap_length_fragments + '"') else ""} \
      ~{if defined(precluster_sequences_splitted) then ("-p " +  '"' + precluster_sequences_splitted + '"') else ""} \
      ~{if defined(make_ranktaxidspecialization_exclusive) then ("-r " +  '"' + make_ranktaxidspecialization_exclusive + '"') else ""} \
      ~{if defined(specialization_name_eg) then ("-z " +  '"' + specialization_name_eg + '"') else ""} \
      ~{if defined(previously_generated_files) then ("-u " +  '"' + previously_generated_files + '"') else ""} \
      ~{true="-v" false="" show_programs_version}
  >>>
  parameter_meta {
    tabseparated_fields_sequence: "Tab-separated with the fields: sequence id <tab> sequence length <tab> taxonomic id [<tab> specialization]"
    nodesdmp_ncbi_taxonomy: "nodes.dmp from NCBI Taxonomy"
    mergeddmp_ncbi_taxonomy: "merged.dmp from NCBI Taxonomy"
    approximate_number_bins: "Approximate number of bins (estimated by total length/bin number). Default: 50 [Mutually exclusive -l]"
    maximum_bin_length: "Maximum bin length (in bp). Use this parameter insted of -b to define the number of bins [Mutually exclusive -b]"
    fragment_sequences_pieces: "Fragment sequences into pieces, output accession will be modified with positions: ACCESION/start:end"
    overlap_length_fragments: "Overlap length between fragments [Only valid with -a]"
    precluster_sequences_splitted: "Pre-cluster sequences into rank/taxid/specialization, so they won't be splitted among bins [none,specialization name,taxid,species,genus,...] Default: none"
    make_ranktaxidspecialization_exclusive: "Make bins rank/taxid/specialization exclusive, so bins won't have mixed sequences. When the chosen rank is not present on a sequence lineage, this sequence will be taxid/specialization exclusive. [none,specialization name,taxid,species,genus,...] Default: none"
    specialization_name_eg: "Specialization name (e.g. assembly, strain). If given, TaxSBP will cluster entries on a specialized level after the taxonomic id. The specialization identifier should be provided as an extra collumn in the input_file ans should respect the taxonomic hiercharchy (one taxid -> multiple specializations / one specialization -> one taxid). Default: ''"
    previously_generated_files: "Previously generated files to be updated. Default: ''"
    show_programs_version: "show program's version number and exit"
  }
}