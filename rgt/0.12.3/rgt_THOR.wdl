version 1.0

task RgtTHOR {
  input {
    String? regions
    String? binsize
    String? step
    Boolean? debug
    Boolean? no_gc_content
    String? norm_regions
    String? fold_change
    String? threshold
    Int? size
    String? par
    Boolean? poisson
    Boolean? single_strand
    String? m_threshold
    String? a_threshold
    Boolean? rmd_up
    String config
  }
  command <<<
    rgt-THOR \
      ~{config} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--no-gc-content" false="" no_gc_content} \
      ~{if defined(norm_regions) then ("--norm-regions " +  '"' + norm_regions + '"') else ""} \
      ~{if defined(fold_change) then ("--foldchange " +  '"' + fold_change + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(par) then ("--par " +  '"' + par + '"') else ""} \
      ~{true="--poisson" false="" poisson} \
      ~{true="--single-strand" false="" single_strand} \
      ~{if defined(m_threshold) then ("--m_threshold " +  '"' + m_threshold + '"') else ""} \
      ~{if defined(a_threshold) then ("--a_threshold " +  '"' + a_threshold + '"') else ""} \
      ~{true="--rmdup" false="" rmd_up}
  >>>
  parameter_meta {
    regions: "Define regions (BED format) to restrict the analysis, that is, where to train the HMM and search for DPs. It is faster, but less precise."
    binsize: "Size of underlying bins for creating the signal. [default: 100]"
    step: "Stepsize with which the window consecutively slides across the genome to create the signal. [default: 50]"
    debug: "Output debug information. Warning: space consuming! [default: False]"
    no_gc_content: "Do not normalize towards GC content. [default: False]"
    norm_regions: "Restrict normalization to particular regions (BED format). [default: none]"
    fold_change: "Fold change parameter to define training set (t_1, see paper). [default: 1.6]"
    threshold: "Minimum signal support for differential peaks to define training set as percentage (t_2, see paper). [default: 95]"
    size: "Number of bins the HMM's training set constists of. [default: 10000]"
    par: "Percentile for p-value postprocessing filter. [default: 1]"
    poisson: "Use binomial distribution as emmission. [default: False]"
    single_strand: "Allow single strand BAM file as input. [default: False]"
    m_threshold: "Define the M threshold of percentile for training TMM. [default: 80]"
    a_threshold: "Define the A threshold of percentile for training TMM. [default: 95]"
    rmd_up: "Remove the duplicate reads [default: False]"
    config: ""
  }
}