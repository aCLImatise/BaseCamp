version 1.0

task MikadoSerialise {
  input {
    String? start_method
    Directory? output_dir
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
    Boolean? force
    File? optional_log_file
    String? log_level
    String db
    String _seed_seed
  }
  command <<<
    mikado serialise \
      ~{db} \
      ~{_seed_seed} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
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
      ~{if (force) then "--force" else ""} \
      ~{if defined(optional_log_file) then ("--json-conf " +  '"' + optional_log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start_method: "Multiprocessing start method."
    output_dir: "Output directory. Default: current working directory"
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
    force: "Flag. If set, an existing databse will be deleted\\n(sqlite) or dropped (MySQL/PostGreSQL) before\\nbeginning the serialisation."
    optional_log_file: "[LOG], --log [LOG]\\nOptional log file. Default: stderr"
    log_level: "Log level. Default: derived from the configuration; if\\nabsent, INFO"
    db: "Optional output database. Default: derived from"
    _seed_seed: "--seed SEED           Random seed number."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}