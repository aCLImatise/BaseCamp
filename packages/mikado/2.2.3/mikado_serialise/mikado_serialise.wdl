version 1.0

task MikadoSerialise {
  input {
    String? start_method
    Boolean? shm
    Boolean? no_force
    Boolean? force
    Directory? output_dir
    String? log_level
    Boolean? blast_loading_debug
    Int? seed
    Boolean? random_seed
    File? orfs
    File? transcripts
    Int? max_regression
    Int? codon_table
    Boolean? no_start_adjustment
    Int? max_target_seqs
    String? blast_targets
    Int? xml
    Int? procs
    Boolean? single_thread
    File? external_scores
    Int? max_objects
    File? configuration
    String building_dot
    String db
  }
  command <<<
    mikado serialise \
      ~{building_dot} \
      ~{db} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""} \
      ~{if (shm) then "--shm" else ""} \
      ~{if (no_force) then "--no-force" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (blast_loading_debug) then "--blast-loading-debug" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if defined(orfs) then ("--orfs " +  '"' + orfs + '"') else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(max_regression) then ("--max-regression " +  '"' + max_regression + '"') else ""} \
      ~{if defined(codon_table) then ("--codon-table " +  '"' + codon_table + '"') else ""} \
      ~{if (no_start_adjustment) then "--no-start-adjustment" else ""} \
      ~{if defined(max_target_seqs) then ("--max-target-seqs " +  '"' + max_target_seqs + '"') else ""} \
      ~{if defined(blast_targets) then ("--blast-targets " +  '"' + blast_targets + '"') else ""} \
      ~{if defined(xml) then ("--xml " +  '"' + xml + '"') else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if (single_thread) then "--single-thread" else ""} \
      ~{if defined(external_scores) then ("--external-scores " +  '"' + external_scores + '"') else ""} \
      ~{if defined(max_objects) then ("--max-objects " +  '"' + max_objects + '"') else ""} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0"
  }
  parameter_meta {
    start_method: "Multiprocessing start method."
    shm: "Use /dev/shm (if available) for faster database"
    no_force: "Flag. If set, do not drop the contents of an existing\\nMikado DB before beginning the serialisation."
    force: "Flag. If set, an existing databse will be deleted\\n(sqlite) or dropped (MySQL/PostGreSQL) before\\nbeginning the serialisation."
    output_dir: "Output directory. Default: current working directory"
    log_level: "Log level. Default: derived from the configuration; if\\nabsent, INFO"
    blast_loading_debug: "Flag. If set, Mikado will switch on the debug mode for\\nthe XML/TSV loading."
    seed: "Random seed number. Default: 0."
    random_seed: "Generate a new random seed number (instead of the\\ndefault of 0)"
    orfs: "ORF BED file(s), separated by commas"
    transcripts: "Transcript FASTA file(s) used for ORF calling and\\nBLAST queries, separated by commas. If multiple files\\nare given, they must be in the same order of the ORF\\nfiles. E.g. valid command lines are:\\n--transcript_fasta all_seqs1.fasta --orfs all_orfs.bed\\n--transcript_fasta seq1.fasta,seq2.fasta --orfs\\norfs1.bed,orf2.bed --transcript_fasta all_seqs.fasta\\n--orfs orfs1.bed,orf2.bed These are invalid instead: #\\nInverted order --transcript_fasta\\nseq1.fasta,seq2.fasta --orfs orfs2.bed,orf1.bed #Two\\ntranscript files, one ORF file --transcript_fasta\\nseq1.fasta,seq2.fasta --orfs all_orfs.bed"
    max_regression: "\\\"Amount of sequence in the ORF (in %) to backtrack in\\norder to find a valid START codon, if one is absent.\\nDefault: None"
    codon_table: "Codon table to use. Default: 0 (ie Standard, NCBI #1,\\nbut only ATG is considered a valid start codon."
    no_start_adjustment: "Disable the start adjustment algorithm. Useful when\\nusing e.g. TransDecoder vs 5+."
    max_target_seqs: "Maximum number of target sequences."
    blast_targets: "Target sequences"
    xml: "BLAST file(s) to parse. They can be provided in three\\nways: - a comma-separated list - as a base folder -\\nusing bash-like name expansion (*,?, etc.). In this\\ncase, you have to enclose the filename pattern in\\ndouble quotes. Multiple folders/file patterns can be\\ngiven, separated by a comma. BLAST files must be\\neither of two formats: - BLAST XML - BLAST tabular\\nformat, with the following **custom** fields: qseqid\\nsseqid pident length mismatch gapopen qstart qend\\nsstart send evalue bitscore ppos btop"
    procs: "Number of threads to use for analysing the BLAST\\nfiles. This number should not be higher than the total\\nnumber of XML files."
    single_thread: "Force serialise to run with a single thread,\\nirrespective of other configuration options."
    external_scores: "Tabular file containing external scores for the\\ntranscripts. Each column should have a distinct name,\\nand transcripts have to be listed on the first column."
    max_objects: "Maximum number of objects to cache in memory before\\ncommitting to the database. Default: 100,000 i.e.\\napproximately 450MB RAM usage for Drosophila."
    configuration: "[LOG], --log [LOG]\\nOptional log file. Default: stderr"
    building_dot: "--no-shm              Force building the database on its final location,"
    db: "Optional output database. Default: derived from\\nconfiguration\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}