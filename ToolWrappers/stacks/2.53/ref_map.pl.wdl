version 1.0

task RefMappl {
  input {
    Boolean? samples
    Boolean? pop_map
    Boolean? spacer_file_names
    File? out_path
    Boolean? additional_options_specific
    Boolean? number_use_default
    Boolean? dry_run_actually
    Boolean? var_alpha
    Boolean? gt_alpha
    Boolean? rm_pcr_duplicates
    Boolean? ignore_pe_reads
    Boolean? unpaired
    Boolean? min_samples_per_pop
    Boolean? min_populations
    Boolean? time_components
  }
  command <<<
    ref_map_pl \
      ~{if (samples) then "--samples" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (spacer_file_names) then "-s" else ""} \
      ~{if (out_path) then "--out-path" else ""} \
      ~{if (additional_options_specific) then "-X" else ""} \
      ~{if (number_use_default) then "-T" else ""} \
      ~{if (dry_run_actually) then "-d" else ""} \
      ~{if (var_alpha) then "--var-alpha" else ""} \
      ~{if (gt_alpha) then "--gt-alpha" else ""} \
      ~{if (rm_pcr_duplicates) then "--rm-pcr-duplicates" else ""} \
      ~{if (ignore_pe_reads) then "--ignore-pe-reads" else ""} \
      ~{if (unpaired) then "--unpaired" else ""} \
      ~{if (min_samples_per_pop) then "--min-samples-per-pop" else ""} \
      ~{if (min_populations) then "--min-populations" else ""} \
      ~{if (time_components) then "--time-components" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    samples: ": path to the directory containing the samples BAM (or SAM) alignment files."
    pop_map: ": path to a population map file (format is \\\"<name> TAB <pop>\\\", one sample per line)."
    spacer_file_names: ": spacer for file names: by default this is empty and the program looks for files\\nnamed 'SAMPLE_NAME.bam'; if this option is given the program looks for files\\nnamed 'SAMPLE_NAME.SPACER.bam'."
    out_path: ": path to an output directory."
    additional_options_specific: ": additional options for specific pipeline components, e.g. -X \\\"populations: -p 3 -r 0.50\\\""
    number_use_default: ": the number of threads/CPUs to use (default: 1)."
    dry_run_actually: ": Dry run. Do not actually execute anything, just print the individual pipeline commands\\nthat would be executed."
    var_alpha: ": significance level at which to call variant sites (for gstacks; default: 0.05)."
    gt_alpha: ": significance level at which to call genotypes (for gstacks; default: 0.05)."
    rm_pcr_duplicates: ": remove all but one copy of read pairs of the same sample that have\\nthe same insert length."
    ignore_pe_reads: ": ignore paired-end reads even if present in the input"
    unpaired: ": ignore read pairing (for paired-end GBS; treat READ2's as if they were READ1's)"
    min_samples_per_pop: ": minimum percentage of individuals in a population required to process a locus for that population (for populations; default: 0)"
    min_populations: ": minimum number of populations a locus must be present in to process a locus (for populations; default: 1)"
    time_components: "(for benchmarking)"
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}