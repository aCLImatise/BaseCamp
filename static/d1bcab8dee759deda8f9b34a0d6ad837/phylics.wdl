version 1.0

task Phylics {
  input {
    File? output_path
    Boolean? run
    Boolean? run_single
    Boolean? run_one_zero_x_preproc
    Boolean? run_cell_filtering
    Boolean? run_cn_vs
    Boolean? run_multiple
    File? input_dirs
    String? method
    String? metric
    String? output_prefix
    Int? tasks
    String? seed
    Int? n_permutations
    Int? rec_lust
    Boolean? reinit
    Array[Int] intervals
    Array[String] values
    Directory? genome
    Int? binning
    Boolean? verbose
  }
  command <<<
    phylics \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if (run_single) then "--run_single" else ""} \
      ~{if (run_one_zero_x_preproc) then "--run_10x_preproc" else ""} \
      ~{if (run_cell_filtering) then "--run_cell_filtering" else ""} \
      ~{if (run_cn_vs) then "--run_cnvs" else ""} \
      ~{if (run_multiple) then "--run_multiple" else ""} \
      ~{if defined(input_dirs) then ("--input_dirs " +  '"' + input_dirs + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(n_permutations) then ("--n_permutations " +  '"' + n_permutations + '"') else ""} \
      ~{if defined(rec_lust) then ("--reclust " +  '"' + rec_lust + '"') else ""} \
      ~{if (reinit) then "--reinit" else ""} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if defined(values) then ("--values " +  '"' + values + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(binning) then ("--binning " +  '"' + binning + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_path: "[--output_prefix out_prefix] [--tasks N]"
    run: "Run the pipeline. USAGE: phylics --run [--run_cnvs |"
    run_single: "| --run_multiple] --input_dirs"
    run_one_zero_x_preproc: "Run 10x data pre-processing module. USAGE: phylics\\n--run_10x_preproc --input_dirs\\nsample_name:10x_out_path --output_path out_oath\\n[--output_prefix out_prefix] [--verbose]. Only single-\\nsample execution is available for this option: only\\nthe first input directory is considered, even if more\\nthan one has been declared."
    run_cell_filtering: "Run the cell filtering module. USAGE: phylics\\n--run_cell_filtering --input_dirs\\nsample_name:input_path --intervals [v1-v2 [v1-v2 ...]\\n--values [v [v ...]] --output_path out_path\\n[--output_prefix out_prefix] [--verbose]. Only single-\\nsample execution is available for this option: only\\nthe first input directory is considered, even if more\\nthan one has been declared. NOTE that at least one of\\nthe two options, \\\"--intervals\\\" and \\\"--values\\\", must\\ncontain values to make this command effective."
    run_cn_vs: "Run only the CNV calling stage. USAGE: phylics --run\\n--run_cnvs --input_dirs beds_dir [beds_dir ...]\\n--genome hg19 --binning variable_500000_101_bwa\\n[--init_ginkgo] [--verbose]"
    run_multiple: "Run only the multiple-sample analysis stage. USAGE:\\nphylics --run --run_multiple --input_dirs\\nsample:input_dir [sample:input_dir ...] --output_path\\nout_path [--output_prefix out_prefix] [--verbose]"
    input_dirs: ":input_dir [sample_name:input_dir ...]\\nPairs made of sample name and directory path,\\nseparated by \\\":\\\", for each input sample. Sample name\\nand input directory path cannot contain \\\":\\\""
    method: "Clustering method (default = complete)"
    metric: "Distance metric"
    output_prefix: "A string to be pre-pended to the names automatically\\ngenerated for the output directories"
    tasks: "Maximum number of tasks to be run in parallel. It\\nallows to execute single-sample analyses in parallel\\nand to parallelize the permutation test execution for\\nthe heterogeneity score computation."
    seed: "Seed to initialize the pseudo-random generator used to\\nperform the permutation test."
    n_permutations: "Number of permutations to execute the permutation test\\nfor the heterogeneity score computation."
    rec_lust: "If this option is specified, only the clustering part\\nis executed with the specified number of clusters (see\\n--n_clusters option), unless --reinit option is\\nspecified (see below)."
    reinit: "This option has effect only if combined with the"
    intervals: "List of of mean ploidy intervals: cells which mean\\nploidies are in the specified ranges are filtered out"
    values: "List of of mean ploidy values: cells which mean\\nploidies are equal to the specified ones are filtered\\nout"
    genome: "Directory name for ROOT_DIR/genomes/${chosen_genome}"
    binning: "A complex value made of the concatenation of - type:\\nvariable or fixed (bins. Variable refers to amount of\\nmappable genome, recommended); - size: bin size; -\\nread-length: mapped reads length; - aligner: bowtie or\\nbwa. The read-length and aligner refer to the\\nsimulations of re-mapping reads of that length with\\nthat aligner on the whole genome. This is used to\\ncalculate bins of \\\"mappable\\\" (i.e. variable)\\ngenome.The resulting value is the name of a file under\\nginkgo/genomes/$choosen_genome/original/ with the bin\\ncoordinates."
    verbose: "Verbose execution."
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}