version 1.0

task Phylics {
  input {
    File? output_path
    Boolean? run
    Boolean? run_multiple
    Boolean? run_one_zero_x_preproc
    Boolean? run_cell_filtering
    Boolean? values
    Boolean? run_cn_vs
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
    Directory? genome
    Int? binning
    Boolean? verbose
  }
  command <<<
    phylics \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if (run_multiple) then "--run_multiple" else ""} \
      ~{if (run_one_zero_x_preproc) then "--run_10x_preproc" else ""} \
      ~{if (run_cell_filtering) then "--run_cell_filtering" else ""} \
      ~{if (values) then "--values" else ""} \
      ~{if (run_cn_vs) then "--run_cnvs" else ""} \
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
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(binning) then ("--binning " +  '"' + binning + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_path: "[--output_prefix out_prefix] [--tasks N]"
    run: "Run the pipeline. USAGE: phylics --run [--run_cnvs |"
    run_multiple: "] --input_dirs"
    run_one_zero_x_preproc: "Run 10x data pre-processing module. USAGE: phylics"
    run_cell_filtering: "Run the cell filtering module. USAGE: phylics"
    values: "[v [v ...]] --output_path out_path"
    run_cn_vs: "Run only the CNV calling stage. USAGE: phylics --run"
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
    genome: "Directory name for ROOT_DIR/genomes/${chosen_genome}"
    binning: "A complex value made of the concatenation of - type:\\nvariable or fixed (bins. Variable refers to amount of\\nmappable genome, recommended); - size: bin size; -\\nread-length: mapped reads length; - aligner: bowtie or\\nbwa. The read-length and aligner refer to the\\nsimulations of re-mapping reads of that length with\\nthat aligner on the whole genome. This is used to\\ncalculate bins of \\\"mappable\\\" (i.e. variable)\\ngenome.The resulting value is the name of a file under\\nginkgo/genomes/$choosen_genome/original/ with the bin\\ncoordinates."
    verbose: "Verbose execution."
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}