version 1.0

task HaphpipeModelTest {
  input {
    String? seqs
    String? run_id
    String? out_name
    String? outdir
    String? data_type
    String? partitions
    String? seed
    String? topology
    String? utree
    Boolean? force
    String? asc_bias
    String? frequencies
    String? het
    String? models
    String? schemes
    String? template
    String? n_cpu
    Boolean? quiet
    String? log_file
    Boolean? debug
    Boolean? keep_tmp
  }
  command <<<
    haphpipe model_test \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if defined(run_id) then ("--run_id " +  '"' + run_id + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(data_type) then ("--data_type " +  '"' + data_type + '"') else ""} \
      ~{if defined(partitions) then ("--partitions " +  '"' + partitions + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if defined(utree) then ("--utree " +  '"' + utree + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(asc_bias) then ("--asc_bias " +  '"' + asc_bias + '"') else ""} \
      ~{if defined(frequencies) then ("--frequencies " +  '"' + frequencies + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if defined(schemes) then ("--schemes " +  '"' + schemes + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--keep_tmp" false="" keep_tmp}
  >>>
  parameter_meta {
    seqs: "Alignment in FASTA or PHYLIP format"
    run_id: "Prefix for output files"
    out_name: "Name for output file (Default: modeltest_results)"
    outdir: "Output directory (Default: .)"
    data_type: "Data type: nt or aa"
    partitions: "Partitions file"
    seed: "Seed for random number generator"
    topology: "Starting topology: ml, mp, fixed-ml-jc, fixed-ml-gtr, fixed-mp, random, or user"
    utree: "User-defined starting tree"
    force: "force output overriding (default: False)"
    asc_bias: "Ascertainment bias correction: lewis, felsenstein, or stamatakis"
    frequencies: "Candidate model frequencies: e (estimated) or f (fixed)"
    het: "Set rate heterogeneity: u (uniform), i (invariant sites +I), g (gamma +G), or f (both invariant sites and gamma +I+G)"
    models: "Text file with candidate models, one per line"
    schemes: "Number of predefined DNA substitution schemes evaluated: 3, 5, 7, 11, or 203"
    template: "Set candidate models according to a specified tool: raxml, phyml, mrbayes, or paup"
    n_cpu: "Number of CPU to use (default: 1)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Name for log file (output)"
    debug: "Print commands but do not run (default: False)"
    keep_tmp: "Keep temporary directory (default: False)"
  }
}