version 1.0

task RefMap.pl {
  input {
    Boolean? samples
    Boolean? pop_map
    Boolean? spacer_file_names
    Boolean? out_path
    Boolean? additional_options_x
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
    ref_map.pl \
      ~{true="--samples" false="" samples} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="-s" false="" spacer_file_names} \
      ~{true="--out-path" false="" out_path} \
      ~{true="-X" false="" additional_options_x} \
      ~{true="-T" false="" number_use_default} \
      ~{true="-d" false="" dry_run_actually} \
      ~{true="--var-alpha" false="" var_alpha} \
      ~{true="--gt-alpha" false="" gt_alpha} \
      ~{true="--rm-pcr-duplicates" false="" rm_pcr_duplicates} \
      ~{true="--ignore-pe-reads" false="" ignore_pe_reads} \
      ~{true="--unpaired" false="" unpaired} \
      ~{true="--min-samples-per-pop" false="" min_samples_per_pop} \
      ~{true="--min-populations" false="" min_populations} \
      ~{true="--time-components" false="" time_components}
  >>>
  parameter_meta {
    samples: ": path to the directory containing the samples BAM (or SAM) alignment files."
    pop_map: ": path to a population map file (format is \"<name> TAB <pop>\", one sample per line)."
    spacer_file_names: ": spacer for file names: by default this is empty and the program looks for files named 'SAMPLE_NAME.bam'; if this option is given the program looks for files named 'SAMPLE_NAME.SPACER.bam'."
    out_path: ": path to an output directory."
    additional_options_x: ": additional options for specific pipeline components, e.g. -X \"populations: -p 3 -r 0.50\""
    number_use_default: ": the number of threads/CPUs to use (default: 1)."
    dry_run_actually: ": Dry run. Do not actually execute anything, just print the individual pipeline commands that would be executed."
    var_alpha: ": significance level at which to call variant sites (for gstacks; default: 0.05)."
    gt_alpha: ": significance level at which to call genotypes (for gstacks; default: 0.05)."
    rm_pcr_duplicates: ": remove all but one copy of read pairs of the same sample that have the same insert length."
    ignore_pe_reads: ": ignore paired-end reads even if present in the input"
    unpaired: ": ignore read pairing (for paired-end GBS; treat READ2's as if they were READ1's)"
    min_samples_per_pop: ": minimum percentage of individuals in a population required to process a locus for that population (for populations; default: 0)"
    min_populations: ": minimum number of populations a locus must be present in to process a locus (for populations; default: 1)"
    time_components: "(for benchmarking)"
  }
}