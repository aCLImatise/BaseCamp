version 1.0

task TomboResquiggle {
  input {
    Boolean? dna
    Boolean? rna
    Array[String] obs_per_base_filter
    Float? q_score
    Float? signal_matching_score
    Int? processes
    Int? corrected_group
    Int? base_call_group
    Array[String] base_call_subgroups
    Boolean? overwrite
    File? failed_reads_filename
    Int? num_most_common_errors
    Boolean? print_advanced_arguments
    Boolean? quiet
    Int fast_fives_basedir
    String reference
  }
  command <<<
    tombo resquiggle \
      ~{fast_fives_basedir} \
      ~{reference} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(q_score) then ("--q-score " +  '"' + q_score + '"') else ""} \
      ~{if defined(signal_matching_score) then ("--signal-matching-score " +  '"' + signal_matching_score + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{if defined(num_most_common_errors) then ("--num-most-common-errors " +  '"' + num_most_common_errors + '"') else ""} \
      ~{if (print_advanced_arguments) then "--print-advanced-arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    dna: "Explicitly select canonical DNA model. Default:\\nAutomatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default:\\nAutomatically determine from FAST5s"
    obs_per_base_filter: "Filter reads based on observations per base percentile\\nthresholds. Format thresholds as \\\"percentile:thresh\\n[pctl2:thresh2 ...]\\\". For example to filter reads with\\n99th pctl > 200 obs/base or max > 5k obs/base use\\n\\\"99:200 100:5000\\\"."
    q_score: "Q-score threshold for filtering low quality reads.\\nDefault: 0.000000"
    signal_matching_score: "Observed to expected signal matching score (higher\\nscore indicates poor matching). Sample type defaults:\\nRNA : 2 || DNA : 1.1"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_group: "FAST5 group obtain original basecalls (under Analyses\\ngroup). Default: Basecall_1D_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    overwrite: "Overwrite previous corrected group in FAST5 files.\\nNote: only effects --corrected-group or --new-\\ncorrected-group."
    failed_reads_filename: "Output failed read filenames with assoicated error.\\nDefault: Do not store failed reads."
    num_most_common_errors: "Dynamically show this many most common errors so far\\nthrough run. Default: 0; Just show progress"
    print_advanced_arguments: "Print advanced re-squiggle arguments and exit."
    quiet: "Don't print status information."
    fast_fives_basedir: "Directory containing fast5 files. All files ending in\\n\\\"fast5\\\" found recursively within this base directory\\nwill be processed."
    reference: "Reference genome/transcriptome FASTA file or minimap2\\nindex (with \\\"map-ont\\\" preset) for mapping."
  }
  output {
    File out_stdout = stdout()
  }
}