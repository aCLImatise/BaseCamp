version 1.0

task Ubismappy {
  input {
    String? terse_dot
    Boolean? km_ers
    Boolean? genome_ready
    Boolean? bis_map
    Boolean? c_two_t
    Boolean? g_two_a
    Boolean? exit_after_indexing
    Int? simultaneous_jobs
    String? var_id
    File? write_script
    Boolean? pipe
    Int? chunk
    String fast_a_path
    String chr_size_path
    String out_dir
    String queue_name
    String bowtie_path
  }
  command <<<
    ubismap_py \
      ~{fast_a_path} \
      ~{chr_size_path} \
      ~{out_dir} \
      ~{queue_name} \
      ~{bowtie_path} \
      ~{if defined(terse_dot) then ("-terse. " +  '"' + terse_dot + '"') else ""} \
      ~{if (km_ers) then "--kmers" else ""} \
      ~{if (genome_ready) then "-GenomeReady" else ""} \
      ~{if (bis_map) then "-Bismap" else ""} \
      ~{if (c_two_t) then "-C2T" else ""} \
      ~{if (g_two_a) then "-G2A" else ""} \
      ~{if (exit_after_indexing) then "-ExitAfterIndexing" else ""} \
      ~{if defined(simultaneous_jobs) then ("-SimultaneousJobs " +  '"' + simultaneous_jobs + '"') else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""} \
      ~{if defined(write_script) then ("-write_script " +  '"' + write_script + '"') else ""} \
      ~{if (pipe) then "-pipe" else ""} \
      ~{if defined(chunk) then ("-chunk " +  '"' + chunk + '"') else ""}
  >>>
  parameter_meta {
    terse_dot: "these options do not exist in your cluster,"
    km_ers: "[KMERS [KMERS ...]]\\nKmer length for mappability. e.g. 24 36 50 100"
    genome_ready: "If in the 'out_dir' there already exists a /chrs and\\n/genome subdirectory where genome directory has a\\ngenome.fasta with bowtie index suffix as\\n'BisMap_bowtie.ind' or 'Umap_bowtie.ind' if --Bismap\\nis not specified and the ./chrs directory has\\nindivudal chromosome FASTA files, specify this option"
    bis_map: "Specify -Bismap if double genome indexing is expected.\\nThis would create a genome that is concatenation of\\nforward and reverse complement. If -C2T or -G2A is\\nexpected, this must be specified"
    c_two_t: "If --Bismap is provided, specify --C2T or --G2A"
    g_two_a: "If --Bismap is provided, specify --C2T or --G2A"
    exit_after_indexing: "If you only want the index, specify this option"
    simultaneous_jobs: "Number of jobs to run simultaneously"
    var_id: "Environmental variable for accessing job IDs. By\\ndefault is set to SGE_TASK_ID assuming a sungrid\\nengine environment."
    write_script: "Specify -write <Path to output job submission file> if\\ninstead of direct execution, you want to save the job\\nsubmission file."
    pipe: "If -pipe is specified, the software command will be\\npiped into the qsub command. For example instead of:\\n'qsub -q <queuename> -N <jobname> python <script>.py\\n<arg1> <arg2>', 'echo python <script>.py <arg1> <arg2>\\n| qsub -q <queuename> -N <jobname>' will be\\nwritten/executed."
    chunk: "Length of chromosomal chunks"
    fast_a_path: "Path to the genome fasta file."
    chr_size_path: "Path to a 2-column file where the first column is the\\nchromosome name and the second column is its size"
    out_dir: "Path to directory to create output files/folders"
    queue_name: "Queue name for qsub job submission."
    bowtie_path: "Path to bowtie-build executable"
  }
  output {
    File out_stdout = stdout()
    File out_write_script = "${in_write_script}"
  }
}