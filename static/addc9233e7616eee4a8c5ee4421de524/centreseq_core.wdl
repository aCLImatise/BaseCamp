version 1.0

task CentreseqCore {
  input {
    File? fast_a_dir
    File? outdir
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
      ~{true="--medoid-repseqs" false="" me_do_id_reps_eqs} \
      ~{true="--pairwise" false="" pairwise} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    fast_a_dir: "Path to directory containing *.fasta files for input to the core pipeline  [required]"
    outdir: "Root directory to store all output files. If this directory already exists, the pipeline will attempt to skip the Prokka step by reading in the existing Prokka output directory, but will overwrite all other existing result files. [required]"
    n_cpu: "Number of CPUs to dedicate to parallelizable steps of the pipeline. Will take all available CPUs - 1 by default."
    n_cpu_me_do_id: "Number of CPUs for the representative medoid picking step (if enabled). You will need substantial RAM per CPU."
    min_seq_id: "Sets the mmseqs cluster parameter \"--min-seq- id\". Defaults to 0.95."
    coverage_length: "Sets the mmseqs cluster coverage parameter \"-c\" directly. Defaults to 0.95, which is the recommended setting."
    me_do_id_reps_eqs: "This setting will identify the representative medoid nucleotide sequence for each core cluster. Enabling this will increase computation time considerably. Note that this parameter has no effect on the number of core clusters detected."
    pairwise: "Generate pairwise comparisons of all core genomes. This setting allows for viewing an interactive network chart which visualizes core genome relatedness."
    verbose: "Set this flag to enable more verbose logging."
  }
}