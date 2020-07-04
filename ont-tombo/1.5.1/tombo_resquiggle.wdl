version 1.0

task TomboResquiggle {
  input {
    Boolean? dna
    Boolean? rna
    Array[String] obs_per_base_filter
    String? q_score
    String? signal_matching_score
    String? processes
    String? corrected_group
    String? base_call_group
    Array[String] base_call_subgroups
    Boolean? overwrite
    String? failed_reads_filename
    String? num_most_common_errors
    Boolean? print_advanced_arguments
    Boolean? quiet
    String fast_fives_basedir
    String reference
  }
  command <<<
    tombo resquiggle \
      ~{fast_fives_basedir} \
      ~{reference} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(q_score) then ("--q-score " +  '"' + q_score + '"') else ""} \
      ~{if defined(signal_matching_score) then ("--signal-matching-score " +  '"' + signal_matching_score + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{if defined(num_most_common_errors) then ("--num-most-common-errors " +  '"' + num_most_common_errors + '"') else ""} \
      ~{true="--print-advanced-arguments" false="" print_advanced_arguments} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    dna: "Explicitly select canonical DNA model. Default: Automatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default: Automatically determine from FAST5s"
    obs_per_base_filter: "Filter reads based on observations per base percentile thresholds. Format thresholds as \"percentile:thresh [pctl2:thresh2 ...]\". For example to filter reads with 99th pctl > 200 obs/base or max > 5k obs/base use \"99:200 100:5000\"."
    q_score: "Q-score threshold for filtering low quality reads. Default: 0.000000"
    signal_matching_score: "Observed to expected signal matching score (higher score indicates poor matching). Sample type defaults: RNA : 2 || DNA : 1.1"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_group: "FAST5 group obtain original basecalls (under Analyses group). Default: Basecall_1D_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    overwrite: "Overwrite previous corrected group in FAST5 files. Note: only effects --corrected-group or --new- corrected-group."
    failed_reads_filename: "Output failed read filenames with assoicated error. Default: Do not store failed reads."
    num_most_common_errors: "Dynamically show this many most common errors so far through run. Default: 0; Just show progress"
    print_advanced_arguments: "Print advanced re-squiggle arguments and exit."
    quiet: "Don't print status information."
    fast_fives_basedir: "Directory containing fast5 files. All files ending in \"fast5\" found recursively within this base directory will be processed."
    reference: "Reference genome/transcriptome FASTA file or minimap2 index (with \"map-ont\" preset) for mapping."
  }
}