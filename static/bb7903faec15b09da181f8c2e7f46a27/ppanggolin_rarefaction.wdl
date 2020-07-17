version 1.0

task PpanggolinRarefaction {
  input {
    String? pan_genome
    String? beta
    String? depth
    Int? min
    Int? max
    Int? max_degree_smoothing
    String? output_directory_default
    Boolean? free_dispersion
    String? chunk_size
    String? nb_of_partitions
    Boolean? re_estimate_k
    String? kmm
    String? soft_core
    String? seed
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin rarefaction \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(max_degree_smoothing) then ("--max_degree_smoothing " +  '"' + max_degree_smoothing + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--free_dispersion" false="" free_dispersion} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{true="--reestimate_K" false="" re_estimate_k} \
      ~{if defined(kmm) then ("-Kmm " +  '"' + kmm + '"') else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    beta: "beta is the strength of the smoothing using the graph topology during partitionning. 0 will deactivate spatial smoothing. (default: 2.5)"
    depth: "Number of samplings at each sampling point (default: 30)"
    min: "Minimum number of organisms in a sample (default: 1)"
    max: "Maximum number of organisms in a sample (if above the number of provided organisms, the provided organisms will be the maximum) (default: 100)"
    max_degree_smoothing: "max. degree of the nodes to be included in the smoothing process. (default: 10)"
    output_directory_default: "Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.44.21_PID30577)"
    free_dispersion: "use if the dispersion around the centroid vector of each partition during must be free. It will be the same for all organisms by default. (default: False)"
    chunk_size: "Size of the chunks when performing partitionning using chunks of organisms. Chunk partitionning will be used automatically if the number of genomes is above this number. (default: 500)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. By default reuse K if it exists else compute it. (default: -1)"
    re_estimate_k: "Will recompute the number of partitions for each sample (between the values provided by --krange) (VERY intensive. Can take a long time.) (default: False)"
    kmm: "KRANGE, --krange KRANGE KRANGE Range of K values to test when detecting K automatically. Default between 3 and the K previously computed if there is one, or 20 if there are none. (default: [3, -1])"
    soft_core: "Soft core threshold (default: 0.95)"
    seed: "seed used to generate random numbers (default: 42)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}