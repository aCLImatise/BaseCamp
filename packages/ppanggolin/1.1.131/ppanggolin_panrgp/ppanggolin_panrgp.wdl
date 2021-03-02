version 1.0

task PpanggolinPanrgp {
  input {
    File? fast_a
    File? an_no
    File? clusters
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    File? basename
    Boolean? rarefaction
    Int? nb_of_partitions
    String? interest
    Boolean? no_defrag
    Directory? tmpdir
    String? verbose
    File? log
    Boolean? disable_prog_bar
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin panrgp \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if (rarefaction) then "--rarefaction" else ""} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{if defined(interest) then ("--interest " +  '"' + interest + '"') else ""} \
      ~{if (no_defrag) then "--no_defrag" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (disable_prog_bar) then "--disable_prog_bar" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.131--py37hf01694f_0"
  }
  parameter_meta {
    fast_a: "A tab-separated file listing the organism names, and\\nthe fasta filepath of its genomic sequence(s) (the\\nfastas can be compressed). One line per organism. This\\noption can be used alone. (default: None)"
    an_no: "A tab-separated file listing the organism names, and\\nthe gff filepath of its annotations (the gffs can be\\ncompressed). One line per organism. This option can be\\nused alone IF the fasta sequences are in the gff\\nfiles, otherwise --fasta needs to be used. (default:\\nNone)"
    clusters: "a tab-separated file listing the cluster names, the\\ngene IDs, and optionnally whether they are a fragment\\nor not. (default: None)"
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2021-02-28_HOUR18.01.43_PID471)"
    basename: "basename for the output file (default: pangenome)"
    rarefaction: "Use to compute the rarefaction curves (WARNING: can be\\ntime consumming) (default: False)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. If\\nunder 3, it will be detected automatically. (default:\\n-1)"
    interest: "Comma separated list of elements to flag when drawing\\nand writing hotspots (default: )"
    no_defrag: "DO NOT Realign gene families to link fragments with\\ntheir non-fragmented gene family. (default: False)"
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
    File out_basename = "${in_basename}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}