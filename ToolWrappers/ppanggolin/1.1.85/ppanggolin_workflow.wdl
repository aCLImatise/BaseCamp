version 1.0

task PpanggolinWorkflow {
  input {
    File? fast_a
    File? an_no
    File? clusters
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    File? basename
    Boolean? rarefaction
    Int? nb_of_partitions
    Boolean? defrag
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin workflow \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if (rarefaction) then "--rarefaction" else ""} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{if (defrag) then "--defrag" else ""} \
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
    fast_a: "A tab-separated file listing the organism names, and\\nthe fasta filepath of its genomic sequence(s) (the\\nfastas can be compressed). One line per organism. This\\noption can be used alone. (default: None)"
    an_no: "A tab-separated file listing the organism names, and\\nthe gff filepath of its annotations (the gffs can be\\ncompressed). One line per organism. This option can be\\nused alone IF the fasta sequences are in the gff\\nfiles, otherwise --fasta needs to be used. (default:\\nNone)"
    clusters: "a tab-separated file listing the cluster names, the\\ngene IDs, and optionnally whether they are a fragment\\nor not. (default: None)"
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2020-09-09_HOUR23.41.05_PID1710)"
    basename: "basename for the output file (default: pangenome)"
    rarefaction: "Use to compute the rarefaction curves (WARNING: can be\\ntime consumming) (default: False)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. If\\nunder 3, it will be detected automatically. (default:\\n-1)"
    defrag: "Realign gene families to associated fragments with\\ntheir non-fragmented gene family. (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaultppanggolinoutputdatehourpid = "${in_output_directory_defaultppanggolinoutputdatehourpid}"
    File out_basename = "${in_basename}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}