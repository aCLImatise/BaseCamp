version 1.0

task PpanggolinWorkflow {
  input {
    String? fast_a
    String? an_no
    String? clusters
    String? output_directory_default
    String? basename
    Boolean? rarefaction
    String? nb_of_partitions
    Boolean? defrag
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin workflow \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{true="--rarefaction" false="" rarefaction} \
      ~{if defined(nb_of_partitions) then ("--nb_of_partitions " +  '"' + nb_of_partitions + '"') else ""} \
      ~{true="--defrag" false="" defrag} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    fast_a: "A tab-separated file listing the organism names, and the fasta filepath of its genomic sequence(s) (the fastas can be compressed). One line per organism. This option can be used alone. (default: None)"
    an_no: "A tab-separated file listing the organism names, and the gff filepath of its annotations (the gffs can be compressed). One line per organism. This option can be used alone IF the fasta sequences are in the gff files, otherwise --fasta needs to be used. (default: None)"
    clusters: "a tab-separated file listing the cluster names, the gene IDs, and optionnally whether they are a fragment or not. (default: None)"
    output_directory_default: "Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.42.21_PID29288)"
    basename: "basename for the output file (default: pangenome)"
    rarefaction: "Use to compute the rarefaction curves (WARNING: can be time consumming) (default: False)"
    nb_of_partitions: "Number of partitions to use. Must be at least 3. If under 3, it will be detected automatically. (default: -1)"
    defrag: "Realign gene families to associated fragments with their non-fragmented gene family. (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}