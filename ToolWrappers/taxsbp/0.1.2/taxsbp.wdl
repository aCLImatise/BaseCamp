version 1.0

task Taxsbp {
  input {
    File? tabseparated_fields_sequence
    File? nodesdmp_ncbi_taxonomy
    File? mergeddmp_ncbi_taxonomy
    Int? approximate_number_bins
    Int? maximum_bin_length
    String? fragment_sequences_accesionstartend
    Int? overlap_length_fragments
    String? precluster_sequences_ranktaxidspecializationso
    String? make_bins_ranktaxidspecialization
    String? specialization_name_eg
    File? previously_generated_files
    Boolean? show_programs_number
  }
  command <<<
    taxsbp \
      ~{if defined(tabseparated_fields_sequence) then ("-f " +  '"' + tabseparated_fields_sequence + '"') else ""} \
      ~{if defined(nodesdmp_ncbi_taxonomy) then ("-n " +  '"' + nodesdmp_ncbi_taxonomy + '"') else ""} \
      ~{if defined(mergeddmp_ncbi_taxonomy) then ("-m " +  '"' + mergeddmp_ncbi_taxonomy + '"') else ""} \
      ~{if defined(approximate_number_bins) then ("-b " +  '"' + approximate_number_bins + '"') else ""} \
      ~{if defined(maximum_bin_length) then ("-l " +  '"' + maximum_bin_length + '"') else ""} \
      ~{if defined(fragment_sequences_accesionstartend) then ("-a " +  '"' + fragment_sequences_accesionstartend + '"') else ""} \
      ~{if defined(overlap_length_fragments) then ("-o " +  '"' + overlap_length_fragments + '"') else ""} \
      ~{if defined(precluster_sequences_ranktaxidspecializationso) then ("-p " +  '"' + precluster_sequences_ranktaxidspecializationso + '"') else ""} \
      ~{if defined(make_bins_ranktaxidspecialization) then ("-r " +  '"' + make_bins_ranktaxidspecialization + '"') else ""} \
      ~{if defined(specialization_name_eg) then ("-z " +  '"' + specialization_name_eg + '"') else ""} \
      ~{if defined(previously_generated_files) then ("-u " +  '"' + previously_generated_files + '"') else ""} \
      ~{if (show_programs_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tabseparated_fields_sequence: "Tab-separated with the fields: sequence id <tab>\\nsequence length <tab> taxonomic id [<tab>\\nspecialization]"
    nodesdmp_ncbi_taxonomy: "nodes.dmp from NCBI Taxonomy"
    mergeddmp_ncbi_taxonomy: "merged.dmp from NCBI Taxonomy"
    approximate_number_bins: "Approximate number of bins (estimated by total\\nlength/bin number). Default: 50 [Mutually exclusive -l]"
    maximum_bin_length: "Maximum bin length (in bp). Use this parameter insted\\nof -b to define the number of bins [Mutually exclusive\\n-b]"
    fragment_sequences_accesionstartend: "Fragment sequences into pieces, output accession will\\nbe modified with positions: ACCESION/start:end"
    overlap_length_fragments: "Overlap length between fragments [Only valid with -a]"
    precluster_sequences_ranktaxidspecializationso: "Pre-cluster sequences into rank/taxid/specialization,\\nso they won't be splitted among bins\\n[none,specialization name,taxid,species,genus,...]\\nDefault: none"
    make_bins_ranktaxidspecialization: "Make bins rank/taxid/specialization exclusive, so bins\\nwon't have mixed sequences. When the chosen rank is not\\npresent on a sequence lineage, this sequence will be\\ntaxid/specialization exclusive. [none,specialization\\nname,taxid,species,genus,...] Default: none"
    specialization_name_eg: "Specialization name (e.g. assembly, strain). If given,\\nTaxSBP will cluster entries on a specialized level\\nafter the taxonomic id. The specialization identifier\\nshould be provided as an extra collumn in the\\ninput_file ans should respect the taxonomic hiercharchy\\n(one taxid -> multiple specializations / one\\nspecialization -> one taxid). Default: ''"
    previously_generated_files: "Previously generated files to be updated. Default: ''"
    show_programs_number: "show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}