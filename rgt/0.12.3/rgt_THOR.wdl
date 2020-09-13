version 1.0

task RgtTHOR {
  input {
    String? name
    Boolean? no_merge_bin
    String? housekeeping_genes
    Directory? output_dir
    Boolean? report
    String? dead_zones
    Boolean? no_correction
    Float? p_value
    Int? exts
    File? factors_inputs
    File? scaling_factors
    Boolean? save_input
    String? regions
    Int? binsize
    Int? step
    Boolean? debug
    Boolean? no_gc_content
    String? norm_regions
    Float? fold_change
    Int? threshold
    Int? size
    Int? par
    Boolean? poisson
    Boolean? single_strand
    Int? m_threshold
    Int? a_threshold
    Boolean? rmd_up
    String created_dot
  }
  command <<<
    rgt_THOR \
      ~{created_dot} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (no_merge_bin) then "--no-merge-bin" else ""} \
      ~{if defined(housekeeping_genes) then ("--housekeeping-genes " +  '"' + housekeeping_genes + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if defined(dead_zones) then ("--deadzones " +  '"' + dead_zones + '"') else ""} \
      ~{if (no_correction) then "--no-correction" else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(exts) then ("--exts " +  '"' + exts + '"') else ""} \
      ~{if defined(factors_inputs) then ("--factors-inputs " +  '"' + factors_inputs + '"') else ""} \
      ~{if defined(scaling_factors) then ("--scaling-factors " +  '"' + scaling_factors + '"') else ""} \
      ~{if (save_input) then "--save-input" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_gc_content) then "--no-gc-content" else ""} \
      ~{if defined(norm_regions) then ("--norm-regions " +  '"' + norm_regions + '"') else ""} \
      ~{if defined(fold_change) then ("--foldchange " +  '"' + fold_change + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(par) then ("--par " +  '"' + par + '"') else ""} \
      ~{if (poisson) then "--poisson" else ""} \
      ~{if (single_strand) then "--single-strand" else ""} \
      ~{if defined(m_threshold) then ("--m_threshold " +  '"' + m_threshold + '"') else ""} \
      ~{if defined(a_threshold) then ("--a_threshold " +  '"' + a_threshold + '"') else ""} \
      ~{if (rmd_up) then "--rmdup" else ""}
  >>>
  parameter_meta {
    name: "Experiment's name and prefix for all files that are"
    no_merge_bin: "Merge the overlapping bin before filtering by\\np-value.[default: Merging bins]"
    housekeeping_genes: "Define housekeeping genes (BED format) used for\\nnormalizing. [default: none]"
    output_dir: "Store files in output directory. [default: none]"
    report: "Generate HTML report about experiment. [default:\\nFalse]"
    dead_zones: "Define blacklisted genomic regions avoided for\\nanalysis (BED format). [default: none]"
    no_correction: "Do not use multipe test correction for p-values\\n(Benjamini/Hochberg). [default: False]"
    p_value: "P-value cutoff for peak detection. Call only peaks\\nwith p-value lower than cutoff. [default: 0.1]"
    exts: "Read's extension size for BAM files (comma separated\\nlist for each BAM file in config file). If option is\\nnot chosen, estimate extension sizes. [default: none]"
    factors_inputs: "Normalization factors for input-DNA (comma separated\\nlist for each BAM file in config file). If option is\\nnot chosen, estimate factors. [default: none]"
    scaling_factors: "Scaling factor for each BAM file (not control input-\\nDNA) as comma separated list for each BAM file in\\nconfig file. If option is not chosen, follow\\nnormalization strategy (TMM or HK approach) [default:\\nnone]"
    save_input: "Save input-DNA file if available. [default: False]"
    regions: "Define regions (BED format) to restrict the analysis,\\nthat is, where to train the HMM and search for DPs. It\\nis faster, but less precise."
    binsize: "Size of underlying bins for creating the signal.\\n[default: 100]"
    step: "Stepsize with which the window consecutively slides\\nacross the genome to create the signal. [default: 50]"
    debug: "Output debug information. Warning: space consuming!\\n[default: False]"
    no_gc_content: "Do not normalize towards GC content. [default: False]"
    norm_regions: "Restrict normalization to particular regions (BED\\nformat). [default: none]"
    fold_change: "Fold change parameter to define training set (t_1, see\\npaper). [default: 1.6]"
    threshold: "Minimum signal support for differential peaks to\\ndefine training set as percentage (t_2, see paper).\\n[default: 95]"
    size: "Number of bins the HMM's training set constists of.\\n[default: 10000]"
    par: "Percentile for p-value postprocessing filter.\\n[default: 1]"
    poisson: "Use binomial distribution as emmission. [default:\\nFalse]"
    single_strand: "Allow single strand BAM file as input. [default:\\nFalse]"
    m_threshold: "Define the M threshold of percentile for training TMM.\\n[default: 80]"
    a_threshold: "Define the A threshold of percentile for training TMM.\\n[default: 95]"
    rmd_up: "Remove the duplicate reads [default: False]"
    created_dot: "-m, --merge           Merge peaks which have a distance less than the"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}