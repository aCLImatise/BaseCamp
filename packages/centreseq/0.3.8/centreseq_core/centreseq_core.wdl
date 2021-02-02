version 1.0

task CentreseqCore {
  input {
    File? fast_a_dir
    Directory? outdir
    Int? n_cpu
    Int? n_cpu_me_do_id
    Float? min_seq_id
    Float? coverage_length
    Boolean? me_do_id_reps_eqs
    Boolean? pairwise
    Boolean? verbose
  }
  command <<<
    centreseq core \
      ~{if defined(fast_a_dir) then ("--fasta-dir " +  '"' + fast_a_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(n_cpu) then ("--n-cpu " +  '"' + n_cpu + '"') else ""} \
      ~{if defined(n_cpu_me_do_id) then ("--n-cpu-medoid " +  '"' + n_cpu_me_do_id + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(coverage_length) then ("--coverage-length " +  '"' + coverage_length + '"') else ""} \
      ~{if (me_do_id_reps_eqs) then "--medoid-repseqs" else ""} \
      ~{if (pairwise) then "--pairwise" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    fast_a_dir: "Path to directory containing *.fasta files for\\ninput to the core pipeline  [required]"
    outdir: "Root directory to store all output files. If\\nthis directory already exists, the pipeline\\nwill attempt to skip the Prokka step by reading\\nin the existing Prokka output directory, but\\nwill overwrite all other existing result files.\\n[required]"
    n_cpu: "Number of CPUs to dedicate to parallelizable\\nsteps of the pipeline. Will take all available\\nCPUs - 1 by default."
    n_cpu_me_do_id: "Number of CPUs for the representative medoid\\npicking step (if enabled). You will need\\nsubstantial RAM per CPU."
    min_seq_id: "Sets the mmseqs cluster parameter \\\"--min-seq-\\nid\\\". Defaults to 0.95."
    coverage_length: "Sets the mmseqs cluster coverage parameter \\\"-c\\\"\\ndirectly. Defaults to 0.95, which is the\\nrecommended setting."
    me_do_id_reps_eqs: "This setting will identify the representative\\nmedoid nucleotide sequence for each core\\ncluster. Enabling this will increase\\ncomputation time considerably. Note that this\\nparameter has no effect on the number of core\\nclusters detected."
    pairwise: "Generate pairwise comparisons of all core\\ngenomes. This setting allows for viewing an\\ninteractive network chart which visualizes core\\ngenome relatedness."
    verbose: "Set this flag to enable more verbose logging."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}