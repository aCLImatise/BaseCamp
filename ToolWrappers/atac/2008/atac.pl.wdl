version 1.0

task Atacpl {
  input {
    File? genome_dir
    Int? num_threads
    Boolean? meryl_only
    Int? meryl_threads
    Boolean? same_species
    Boolean? cross_species
    String? segment_id
  }
  command <<<
    atac_pl \
      ~{if defined(genome_dir) then ("-genomedir " +  '"' + genome_dir + '"') else ""} \
      ~{if defined(num_threads) then ("-numthreads " +  '"' + num_threads + '"') else ""} \
      ~{if (meryl_only) then "-merylonly" else ""} \
      ~{if defined(meryl_threads) then ("-merylthreads " +  '"' + meryl_threads + '"') else ""} \
      ~{if (same_species) then "-samespecies" else ""} \
      ~{if (cross_species) then "-crossspecies" else ""} \
      ~{if defined(segment_id) then ("-segmentid " +  '"' + segment_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_dir: "-- path to the GENOMES directory"
    num_threads: "-- number of threads to use per search\\n(slight increase in memory usage)"
    meryl_only: "-- only run the meryl components"
    meryl_threads: "-- number of threads to use for meryl"
    same_species: "-- use magic values for same species"
    cross_species: "-- use guesses for different species"
    segment_id: "-- only run segment with id x\\n(don't use)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}