version 1.0

task Atac.pl {
  input {
    File? genome_dir
    String? num_threads
    Boolean? meryl_only
    String? meryl_threads
    Boolean? same_species
    Boolean? cross_species
    String? segment_id
  }
  command <<<
    atac.pl \
      ~{if defined(genome_dir) then ("-genomedir " +  '"' + genome_dir + '"') else ""} \
      ~{if defined(num_threads) then ("-numthreads " +  '"' + num_threads + '"') else ""} \
      ~{true="-merylonly" false="" meryl_only} \
      ~{if defined(meryl_threads) then ("-merylthreads " +  '"' + meryl_threads + '"') else ""} \
      ~{true="-samespecies" false="" same_species} \
      ~{true="-crossspecies" false="" cross_species} \
      ~{if defined(segment_id) then ("-segmentid " +  '"' + segment_id + '"') else ""}
  >>>
  parameter_meta {
    genome_dir: "-- path to the GENOMES directory"
    num_threads: "-- number of threads to use per search (slight increase in memory usage)"
    meryl_only: "-- only run the meryl components"
    meryl_threads: "-- number of threads to use for meryl"
    same_species: "-- use magic values for same species"
    cross_species: "-- use guesses for different species"
    segment_id: "-- only run segment with id x (don't use)"
  }
}