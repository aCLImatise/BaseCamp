version 1.0

task PpanggolinPartition {
  input {
    String? pan_genome
    String? beta
    Int? max_degree_smoothing
    String? output_directory_default
    Boolean? free_dispersion
    String? chunk_size
    String? nb_of_partitions
    String? kmm
    String? icl_margin
    Boolean? draw_icl
    Boolean? keep_tmp_files
    String? seed
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin partition \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(max_degree_smoothing) then ("--max_degree_smoothing " +  '"' + max_degree_smoothing + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--free_dispersion" false="" free_dispersion} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{if defined(kmm) then ("-Kmm " +  '"' + kmm + '"') else ""} \
      ~{if defined(icl_margin) then ("--ICL_margin " +  '"' + icl_margin + '"') else ""} \
      ~{true="--draw_ICL" false="" draw_icl} \
      ~{true="--keep_tmp_files" false="" keep_tmp_files} \
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
    max_degree_smoothing: "max. degree of the nodes to be included in the smoothing process. (default: 10)"
    output_directory_default: "Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.43.44_PID30301)"
    free_dispersion: "use if the dispersion around the centroid vector of each partition during must be free. It will be the same for all organisms by default. (default: False)"
    chunk_size: "Size of the chunks when performing partitionning using chunks of organisms. Chunk partitionning will be used automatically if the number of genomes is above this number. (default: 500)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. If under 3, it will be detected automatically. (default: -1)"
    kmm: "KRANGE, --krange KRANGE KRANGE Range of K values to test when detecting K automatically. Default between 3 and 20. (default: [3, 20])"
    icl_margin: "K is detected automatically by maximizing ICL. However at some point the ICL reaches a plateau. Therefore we are looking for the minimal value of K without significative gain from the larger values of K measured by ICL. For that we take the lowest K that is found within a given 'margin' of the maximal ICL value. Basically, change this option only if you truly understand it, otherwise just leave it be. (default: 0.05)"
    draw_icl: "Use if you can to draw the ICL curve for all of the tested K values. Will not be done if K is given. (default: False)"
    keep_tmp_files: "Use if you want to keep the temporary NEM files (default: False)"
    seed: "seed used to generate random numbers (default: 42)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}