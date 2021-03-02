version 1.0

task HpModelTest {
  input {
    String? seqs
    String? run_id
    File? out_name
    Directory? outdir
    String? data_type
    File? partitions
    Int? seed
    String? topology
    String? utree
    Boolean? force
    String? asc_bias
    String? het
    File? models
    Int? schemes
    String? template
    Int? n_cpu
    Boolean? quiet
    File? log_file
    Boolean? debug
    Boolean? keep_tmp
    String stam_a_takis
  }
  command <<<
    hp_model_test \
      ~{stam_a_takis} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if defined(run_id) then ("--run_id " +  '"' + run_id + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(data_type) then ("--data_type " +  '"' + data_type + '"') else ""} \
      ~{if defined(partitions) then ("--partitions " +  '"' + partitions + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if defined(utree) then ("--utree " +  '"' + utree + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(asc_bias) then ("--asc_bias " +  '"' + asc_bias + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if defined(schemes) then ("--schemes " +  '"' + schemes + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seqs: "Alignment in FASTA or PHYLIP format"
    run_id: "Prefix for output files"
    out_name: "Name for output file (Default: modeltest_results)"
    outdir: "Output directory (Default: .)"
    data_type: "Data type: nt or aa"
    partitions: "Partitions file"
    seed: "Seed for random number generator"
    topology: "Starting topology: ml, mp, fixed-ml-jc, fixed-ml-gtr,\\nfixed-mp, random, or user"
    utree: "User-defined starting tree"
    force: "force output overriding (default: False)"
    asc_bias: "Ascertainment bias correction: lewis, felsenstein, or"
    het: "Set rate heterogeneity: u (uniform), i (invariant\\nsites +I), g (gamma +G), or f (both invariant sites\\nand gamma +I+G)"
    models: "Text file with candidate models, one per line"
    schemes: "Number of predefined DNA substitution schemes\\nevaluated: 3, 5, 7, 11, or 203"
    template: "Set candidate models according to a specified tool:\\nraxml, phyml, mrbayes, or paup"
    n_cpu: "Number of CPU to use (default: 1)"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Name for log file (output)"
    debug: "Print commands but do not run (default: False)"
    keep_tmp: "Keep temporary directory (default: False)"
    stam_a_takis: "--frequencies FREQUENCIES"
  }
  output {
    File out_stdout = stdout()
    File out_out_name = "${in_out_name}"
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}