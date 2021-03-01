version 1.0

task PpanggolinPartition {
  input {
    File? pan_genome
    Float? beta
    Int? max_degree_smoothing
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    Boolean? free_dispersion
    Int? chunk_size
    Int? nb_of_partitions
    Int? kmm
    Float? icl_margin
    Boolean? draw_icl
    Boolean? keep_tmp_files
    Int? seed
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin partition \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(max_degree_smoothing) then ("--max_degree_smoothing " +  '"' + max_degree_smoothing + '"') else ""} \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if (free_dispersion) then "--free_dispersion" else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{if defined(kmm) then ("-Kmm " +  '"' + kmm + '"') else ""} \
      ~{if defined(icl_margin) then ("--ICL_margin " +  '"' + icl_margin + '"') else ""} \
      ~{if (draw_icl) then "--draw_ICL" else ""} \
      ~{if (keep_tmp_files) then "--keep_tmp_files" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    beta: "beta is the strength of the smoothing using the graph\\ntopology during partitionning. 0 will deactivate\\nspatial smoothing. (default: 2.5)"
    max_degree_smoothing: "max. degree of the nodes to be included in the\\nsmoothing process. (default: 10)"
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2020-09-09_HOUR23.40.01_PID629)"
    free_dispersion: "use if the dispersion around the centroid vector of\\neach partition during must be free. It will be the\\nsame for all organisms by default. (default: False)"
    chunk_size: "Size of the chunks when performing partitionning using\\nchunks of organisms. Chunk partitionning will be used\\nautomatically if the number of genomes is above this\\nnumber. (default: 500)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. If\\nunder 3, it will be detected automatically. (default:\\n-1)"
    kmm: "KRANGE, --krange KRANGE KRANGE\\nRange of K values to test when detecting K\\nautomatically. Default between 3 and 20. (default: [3,\\n20])"
    icl_margin: "K is detected automatically by maximizing ICL. However\\nat some point the ICL reaches a plateau. Therefore we\\nare looking for the minimal value of K without\\nsignificative gain from the larger values of K\\nmeasured by ICL. For that we take the lowest K that is\\nfound within a given 'margin' of the maximal ICL\\nvalue. Basically, change this option only if you truly\\nunderstand it, otherwise just leave it be. (default:\\n0.05)"
    draw_icl: "Use if you can to draw the ICL curve for all of the\\ntested K values. Will not be done if K is given.\\n(default: False)"
    keep_tmp_files: "Use if you want to keep the temporary NEM files\\n(default: False)"
    seed: "seed used to generate random numbers (default: 42)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
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