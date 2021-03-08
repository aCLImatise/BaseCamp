version 1.0

task PpanggolinRarefaction {
  input {
    File? pan_genome
    Float? beta
    Int? depth
    Int? min
    Int? max
    Int? max_degree_smoothing
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    Boolean? free_dispersion
    Int? chunk_size
    Int? nb_of_partitions
    Boolean? re_estimate_k
    Int? kmm
    Float? soft_core
    Int? seed
    Directory? tmpdir
    String? verbose
    File? log
    Boolean? disable_prog_bar
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin rarefaction \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(max_degree_smoothing) then ("--max_degree_smoothing " +  '"' + max_degree_smoothing + '"') else ""} \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if (free_dispersion) then "--free_dispersion" else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{if (re_estimate_k) then "--reestimate_K" else ""} \
      ~{if defined(kmm) then ("-Kmm " +  '"' + kmm + '"') else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (disable_prog_bar) then "--disable_prog_bar" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    beta: "beta is the strength of the smoothing using the graph\\ntopology during partitionning. 0 will deactivate\\nspatial smoothing. (default: 2.5)"
    depth: "Number of samplings at each sampling point (default:\\n30)"
    min: "Minimum number of organisms in a sample (default: 1)"
    max: "Maximum number of organisms in a sample (if above the\\nnumber of provided organisms, the provided organisms\\nwill be the maximum) (default: 100)"
    max_degree_smoothing: "max. degree of the nodes to be included in the\\nsmoothing process. (default: 10)"
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2021-03-08_HOUR12.46.21_PID235)"
    free_dispersion: "use if the dispersion around the centroid vector of\\neach partition during must be free. It will be the\\nsame for all organisms by default. (default: False)"
    chunk_size: "Size of the chunks when performing partitionning using\\nchunks of organisms. Chunk partitionning will be used\\nautomatically if the number of genomes is above this\\nnumber. (default: 500)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. By\\ndefault reuse K if it exists else compute it.\\n(default: -1)"
    re_estimate_k: "Will recompute the number of partitions for each\\nsample (between the values provided by --krange) (VERY\\nintensive. Can take a long time.) (default: False)"
    kmm: "KRANGE, --krange KRANGE KRANGE\\nRange of K values to test when detecting K\\nautomatically. Default between 3 and the K previously\\ncomputed if there is one, or 20 if there are none.\\n(default: [3, -1])"
    soft_core: "Soft core threshold (default: 0.95)"
    seed: "seed used to generate random numbers (default: 42)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    disable_prog_bar: "disables the progress bars (default: False)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaultppanggolinoutputdatehourpid = "${in_output_directory_defaultppanggolinoutputdatehourpid}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}