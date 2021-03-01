version 1.0

task DenovoMappl {
  input {
    Boolean? samples
    Boolean? pop_map
    File? out_path
    Boolean? additional_options_specific
    Boolean? threads
    Boolean? dry_run
    Boolean? resume
    Boolean? number_within_individuals
    Boolean? number_between_individuals
    Boolean? var_alpha
    Boolean? gt_alpha
    Boolean? paired
    Boolean? rm_pcr_duplicates
    Boolean? min_samples_per_pop
    Boolean? min_populations
    Boolean? time_components
  }
  command <<<
    denovo_map_pl \
      ~{if (samples) then "--samples" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (out_path) then "--out-path" else ""} \
      ~{if (additional_options_specific) then "-X" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (number_within_individuals) then "-M" else ""} \
      ~{if (number_between_individuals) then "-n" else ""} \
      ~{if (var_alpha) then "--var-alpha" else ""} \
      ~{if (gt_alpha) then "--gt-alpha" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (rm_pcr_duplicates) then "--rm-pcr-duplicates" else ""} \
      ~{if (min_samples_per_pop) then "--min-samples-per-pop" else ""} \
      ~{if (min_populations) then "--min-populations" else ""} \
      ~{if (time_components) then "--time-components" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    samples: ": path to the directory containing the samples reads files."
    pop_map: ": path to a population map file (format is \\\"<name> TAB <pop>\\\", one sample per line)."
    out_path: ": path to an output directory."
    additional_options_specific: ": additional options for specific pipeline components, e.g. -X \\\"populations: --min-maf 0.05\\\"."
    threads: ": the number of threads/CPUs to use (default: 1)."
    dry_run: ": dry run. Do not actually execute anything, just print the commands that would be executed."
    resume: ": resume executing the pipeline from a previous run."
    number_within_individuals: ": number of mismatches allowed between stacks within individuals (for ustacks)."
    number_between_individuals: ": number of mismatches allowed between stacks between individuals (for cstacks; default 1; suggested: set to ustacks -M)."
    var_alpha: ": significance level at which to call variant sites (for gstacks; default: 0.05)."
    gt_alpha: ": significance level at which to call genotypes (for gstacks; default: 0.05)."
    paired: ": after assembling RAD loci, assemble mini-contigs with paired-end reads."
    rm_pcr_duplicates: ": remove all but one set of read pairs of the same sample that have\\nthe same insert length."
    min_samples_per_pop: ": minimum percentage of individuals in a population required to process a locus for that population (for populations; default: 0)"
    min_populations: ": minimum number of populations a locus must be present in to process a locus (for populations; default: 1)"
    time_components: "(for benchmarking)"
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}