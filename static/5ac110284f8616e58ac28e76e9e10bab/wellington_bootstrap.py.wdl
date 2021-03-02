version 1.0

task WellingtonBootstrappy {
  input {
    Int? footprint_sizes
    Float? fdr_cut_off
    Int? fdr_iterations
    Int? fdr_limit
    Int? processes
    Boolean? atacseq_mode_default
    String treatment_bam
    String control_bam
    String bed_sites
    String treatment_only_output
    String control_only_output
  }
  command <<<
    wellington_bootstrap_py \
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
      ~{if (atacseq_mode_default) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    footprint_sizes: "Range of footprint sizes to try in format\\n\\\"from,to,step\\\" (default: 11,26,2)"
    fdr_cut_off: "Detect footprints using the FDR selection method at a\\nspecific FDR (default: 0.01)"
    fdr_iterations: "How many randomisations to use when performing FDR\\ncalculations (default: 100)"
    fdr_limit: "Minimum p-value to be considered significant for FDR\\ncalculation (default: -20)"
    processes: "Number of processes to use (default: uses all CPUs)"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
    treatment_bam: "BAM file for treatment"
    control_bam: "BAM file for control"
    bed_sites: "BED file of genomic locations to search in"
    treatment_only_output: "File to write treatment specific fooprints scores to"
    control_only_output: "File to write control specific footprint scores to"
  }
  output {
    File out_stdout = stdout()
  }
}