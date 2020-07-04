version 1.0

task Phylics {
  input {
    Boolean? run
    Boolean? run_one_zero_x_preproc
    Boolean? run_cell_filtering
    Boolean? run_cn_vs
    Boolean? run_single
    Boolean? run_multiple
    String? method
    String? metric
    String? output_path
    String? output_prefix
    String? tasks
    String? seed
    String? n_permutations
    String? rec_lust
    Boolean? reinit
    Array[String] intervals
    Array[String] values
    String? genome
    String? binning
    Boolean? verbose
  }
  command <<<
    phylics \
      ~{true="--run" false="" run} \
      ~{true="--run_10x_preproc" false="" run_one_zero_x_preproc} \
      ~{true="--run_cell_filtering" false="" run_cell_filtering} \
      ~{true="--run_cnvs" false="" run_cn_vs} \
      ~{true="--run_single" false="" run_single} \
      ~{true="--run_multiple" false="" run_multiple} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(n_permutations) then ("--n_permutations " +  '"' + n_permutations + '"') else ""} \
      ~{if defined(rec_lust) then ("--reclust " +  '"' + rec_lust + '"') else ""} \
      ~{true="--reinit" false="" reinit} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if defined(values) then ("--values " +  '"' + values + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(binning) then ("--binning " +  '"' + binning + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    run: "Run the pipeline. USAGE: phylics --run [--run_cnvs | --run_single | --run_multiple] --input_dirs sample:beds_dir [sample:beds_dir ...] --genome hg19 --binning variable_500000_101_bwa --output_path out_path [--output_prefix out_prefix] [--verbose]"
    run_one_zero_x_preproc: "Run 10x data pre-processing module. USAGE: phylics --run_10x_preproc --input_dirs sample_name:10x_out_path --output_path out_oath [--output_prefix out_prefix] [--verbose]. Only single- sample execution is available for this option: only the first input directory is considered, even if more than one has been declared."
    run_cell_filtering: "Run the cell filtering module. USAGE: phylics --run_cell_filtering --input_dirs sample_name:input_path --intervals [v1-v2 [v1-v2 ...] --values [v [v ...]] --output_path out_path [--output_prefix out_prefix] [--verbose]. Only single- sample execution is available for this option: only the first input directory is considered, even if more than one has been declared. NOTE that at least one of the two options, \"--intervals\" and \"--values\", must contain values to make this command effective."
    run_cn_vs: "Run only the CNV calling stage. USAGE: phylics --run --run_cnvs --input_dirs beds_dir [beds_dir ...] --genome hg19 --binning variable_500000_101_bwa [--init_ginkgo] [--verbose]"
    run_single: "Run only the single-sample analysis stage. USAGE: phylics --run --run_single --input_dirs sample:input_dir [sample:input_dir ...] --output_path out_path [--output_prefix out_prefix] [--verbose]"
    run_multiple: "Run only the multiple-sample analysis stage. USAGE: phylics --run --run_multiple --input_dirs sample:input_dir [sample:input_dir ...] --output_path out_path [--output_prefix out_prefix] [--verbose]"
    method: "Clustering method (default = complete)"
    metric: "Distance metric"
    output_path: "Path to the location where the output directories for the different analysis stages must be created."
    output_prefix: "A string to be pre-pended to the names automatically generated for the output directories"
    tasks: "Maximum number of tasks to be run in parallel. It allows to execute single-sample analyses in parallel and to parallelize the permutation test execution for the heterogeneity score computation."
    seed: "Seed to initialize the pseudo-random generator used to perform the permutation test."
    n_permutations: "Number of permutations to execute the permutation test for the heterogeneity score computation."
    rec_lust: "If this option is specified, only the clustering part is executed with the specified number of clusters (see --n_clusters option), unless --reinit option is specified (see below)."
    reinit: "This option has effect only if combined with the --reclust option. It allows to recompute the entire analysis and then recluster with the specified number of clusters."
    intervals: "List of of mean ploidy intervals: cells which mean ploidies are in the specified ranges are filtered out"
    values: "List of of mean ploidy values: cells which mean ploidies are equal to the specified ones are filtered out"
    genome: "Directory name for ROOT_DIR/genomes/${chosen_genome}"
    binning: "A complex value made of the concatenation of - type: variable or fixed (bins. Variable refers to amount of mappable genome, recommended); - size: bin size; - read-length: mapped reads length; - aligner: bowtie or bwa. The read-length and aligner refer to the simulations of re-mapping reads of that length with that aligner on the whole genome. This is used to calculate bins of \"mappable\" (i.e. variable) genome.The resulting value is the name of a file under ginkgo/genomes/$choosen_genome/original/ with the bin coordinates."
    verbose: "Verbose execution."
  }
}