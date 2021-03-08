version 1.0

task SimBac {
  input {
    Int? sets_number_isolates
    Int? sets_value_theta
    Int? sets_minimum_probability
    Int? sets_maximum_probability
    Int? sets_value_r
    Int? sets_rate_r
    Int? sets_value_delta
    Int? sets_average_length
    Int? num_sets_number
    Int? sets_gap_fragmentdefault
    Int? use_given_seed
    File? export_data_given
    File? export_clonal_genealogy
    File? export_local_trees
    File? write_log_file_internal
    File? write_log_file_external
    File? write_log_file_taxa
    File? export_dot_graph
    Boolean? include_ancestral_material
  }
  command <<<
    SimBac \
      ~{if defined(sets_number_isolates) then ("-N " +  '"' + sets_number_isolates + '"') else ""} \
      ~{if defined(sets_value_theta) then ("-T " +  '"' + sets_value_theta + '"') else ""} \
      ~{if defined(sets_minimum_probability) then ("-m " +  '"' + sets_minimum_probability + '"') else ""} \
      ~{if defined(sets_maximum_probability) then ("-M " +  '"' + sets_maximum_probability + '"') else ""} \
      ~{if defined(sets_value_r) then ("-R " +  '"' + sets_value_r + '"') else ""} \
      ~{if defined(sets_rate_r) then ("-r " +  '"' + sets_rate_r + '"') else ""} \
      ~{if defined(sets_value_delta) then ("-D " +  '"' + sets_value_delta + '"') else ""} \
      ~{if defined(sets_average_length) then ("-e " +  '"' + sets_average_length + '"') else ""} \
      ~{if defined(num_sets_number) then ("-B " +  '"' + num_sets_number + '"') else ""} \
      ~{if defined(sets_gap_fragmentdefault) then ("-G " +  '"' + sets_gap_fragmentdefault + '"') else ""} \
      ~{if defined(use_given_seed) then ("-s " +  '"' + use_given_seed + '"') else ""} \
      ~{if defined(export_data_given) then ("-o " +  '"' + export_data_given + '"') else ""} \
      ~{if defined(export_clonal_genealogy) then ("-c " +  '"' + export_clonal_genealogy + '"') else ""} \
      ~{if defined(export_local_trees) then ("-l " +  '"' + export_local_trees + '"') else ""} \
      ~{if defined(write_log_file_internal) then ("-b " +  '"' + write_log_file_internal + '"') else ""} \
      ~{if defined(write_log_file_external) then ("-f " +  '"' + write_log_file_external + '"') else ""} \
      ~{if defined(write_log_file_taxa) then ("-g " +  '"' + write_log_file_taxa + '"') else ""} \
      ~{if defined(export_dot_graph) then ("-d " +  '"' + export_dot_graph + '"') else ""} \
      ~{if (include_ancestral_material) then "-a" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simbac:0.1a--h9e03d57_0"
  }
  parameter_meta {
    sets_number_isolates: "Sets the number of isolates (default is 100)"
    sets_value_theta: "Sets the value of theta, between 0 and 1 (default is 0.01))"
    sets_minimum_probability: "Sets the minimum probability of mutation in an interval of external recombination between 0 & 1 (default is 0)"
    sets_maximum_probability: "Sets the maximum probability of mutation in an interval of external recombination between 0 & 1 (default is 0)"
    sets_value_r: "Sets the value of R, the site-specific internal recombination rate (default is 0.01)"
    sets_rate_r: "Sets the rate of R external, the site-specific rate of external recombination (default is 0)"
    sets_value_delta: "Sets the value of delta (default is 500)"
    sets_average_length: "Sets the average length of external recombinant interval (default is 500)"
    num_sets_number: ",...,NUM Sets the number and length of the fragments\\n(default is 10000)"
    sets_gap_fragmentdefault: "Sets the gap between each fragment(default is 0)"
    use_given_seed: "Use given seed to initiate random number generator"
    export_data_given: "Export data to given file"
    export_clonal_genealogy: "Export clonal genealogy to given file"
    export_local_trees: "Export local trees to given file"
    write_log_file_internal: "Write log file of internal recombinant break interval locations"
    write_log_file_external: "Write log file of external recombinant break interval locations"
    write_log_file_taxa: "Write log file of recombinant break interval locations and relevant taxa (Use only recommended for small ARGs)"
    export_dot_graph: "Export DOT graph to given file"
    include_ancestral_material: "Include ancestral material in the DOT graph"
  }
  output {
    File out_stdout = stdout()
  }
}