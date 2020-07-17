version 1.0

task WellingtonBootstrap.py {
  input {
    String? footprint_sizes
    String? fdr_cut_off
    String? fdr_iterations
    String? fdr_limit
    String? processes
    Boolean? atacseq_mode_default
    String treatment_bam
    String control_bam
    String bed_sites
    String treatment_only_output
    String control_only_output
  }
  command <<<
    wellington_bootstrap.py \
      ~{treatment_bam} \
      ~{control_bam} \
      ~{bed_sites} \
      ~{treatment_only_output} \
      ~{control_only_output} \
      ~{if defined(footprint_sizes) then ("--footprint-sizes " +  '"' + footprint_sizes + '"') else ""} \
      ~{if defined(fdr_cut_off) then ("--FDR_cutoff " +  '"' + fdr_cut_off + '"') else ""} \
      ~{if defined(fdr_iterations) then ("--FDR_iterations " +  '"' + fdr_iterations + '"') else ""} \
      ~{if defined(fdr_limit) then ("--FDR_limit " +  '"' + fdr_limit + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{true="-A" false="" atacseq_mode_default}
  >>>
  parameter_meta {
    footprint_sizes: "Range of footprint sizes to try in format \"from,to,step\" (default: 11,26,2)"
    fdr_cut_off: "Detect footprints using the FDR selection method at a specific FDR (default: 0.01)"
    fdr_iterations: "How many randomisations to use when performing FDR calculations (default: 100)"
    fdr_limit: "Minimum p-value to be considered significant for FDR calculation (default: -20)"
    processes: "Number of processes to use (default: uses all CPUs)"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
    treatment_bam: "BAM file for treatment"
    control_bam: "BAM file for control"
    bed_sites: "BED file of genomic locations to search in"
    treatment_only_output: "File to write treatment specific fooprints scores to"
    control_only_output: "File to write control specific footprint scores to"
  }
}