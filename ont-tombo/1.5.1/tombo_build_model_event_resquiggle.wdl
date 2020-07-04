version 1.0

task TomboBuildModelEventResquiggle {
  input {
    Int? minimap_two_executable
    Int? minimap_two_index
    String? bwa_mem_executable
    String? graph_map_executable
    String? alignment_batch_size
    Array[String] obs_per_base_filter
    String? timeout
    String? cpts_limit
    Boolean? skip_index
    Boolean? overwrite
    String? failed_reads_filename
    Boolean? include_event_stdev
    String? corrected_group
    String? base_call_group
    Array[String] base_call_subgroups
    String? processes
    String? align_processes
    String? align_threads_per_process
    String? re_squiggle_processes
    Boolean? quiet
    String fast_fives_basedir
    String reference_fast_a
  }
  command <<<
    tombo build_model event_resquiggle \
      ~{fast_fives_basedir} \
      ~{reference_fast_a} \
      ~{if defined(minimap_two_executable) then ("--minimap2-executable " +  '"' + minimap_two_executable + '"') else ""} \
      ~{if defined(minimap_two_index) then ("--minimap2-index " +  '"' + minimap_two_index + '"') else ""} \
      ~{if defined(bwa_mem_executable) then ("--bwa-mem-executable " +  '"' + bwa_mem_executable + '"') else ""} \
      ~{if defined(graph_map_executable) then ("--graphmap-executable " +  '"' + graph_map_executable + '"') else ""} \
      ~{if defined(alignment_batch_size) then ("--alignment-batch-size " +  '"' + alignment_batch_size + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(cpts_limit) then ("--cpts-limit " +  '"' + cpts_limit + '"') else ""} \
      ~{true="--skip-index" false="" skip_index} \
      ~{true="--overwrite" false="" overwrite} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{true="--include-event-stdev" false="" include_event_stdev} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(align_processes) then ("--align-processes " +  '"' + align_processes + '"') else ""} \
      ~{if defined(align_threads_per_process) then ("--align-threads-per-process " +  '"' + align_threads_per_process + '"') else ""} \
      ~{if defined(re_squiggle_processes) then ("--resquiggle-processes " +  '"' + re_squiggle_processes + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    minimap_two_executable: "Path to minimap2 executable."
    minimap_two_index: "Path to minimap2 index (with map-ont preset) file corresponding to the [genome_fasta] provided."
    bwa_mem_executable: "Path to bwa-mem executable."
    graph_map_executable: "Path to graphmap executable."
    alignment_batch_size: "Number of reads included in each alignment call. Note: A new system mapping call is made for each batch (including loading of the genome), so it is advised to use larger values for larger genomes. Default: 1000"
    obs_per_base_filter: "Filter reads based on observations per base percentile thresholds. Format thresholds as \"percentile:thresh [pctl2:thresh2 ...]\". For example to filter reads with 99th pctl > 200 obs/base or max > 5k obs/base use \"99:200 100:5000\"."
    timeout: "Timeout in seconds for processing a single read. Default: No timeout."
    cpts_limit: "Maximum number of changepoints to find within a single indel group. Default: No limit."
    skip_index: "Skip creation of tombo index. This drastically slows downstream tombo commands. Default stores tombo index named \".[--fast5-basedir].[--corrected- group].tombo.index\" to be loaded automatically for downstream commands."
    overwrite: "Overwrite previous corrected group in FAST5 files. Note: only effects --corrected-group or --new- corrected-group."
    failed_reads_filename: "Output failed read filenames with assoicated error. Default: Do not store failed reads."
    include_event_stdev: "Include corrected event standard deviation in output FAST5 data."
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_group: "FAST5 group obtain original basecalls (under Analyses group). Default: Basecall_1D_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    processes: "Number of processes. Default: 2"
    align_processes: "Number of processes to use for parsing and aligning original basecalls. Each process will independently load the genome into memory, so use caution with larger genomes (e.g. human). Default: 1"
    align_threads_per_process: "Number of threads to use for aligner system call. Default: [--processes] / (2 * [--align-processes)]"
    re_squiggle_processes: "Number of processes to use for resquiggle algorithm. Default: [--processes] / 2"
    quiet: "Don't print status information."
    fast_fives_basedir: "Directory containing fast5 files. All files ending in \"fast5\" found recursively within this base directory will be processed."
    reference_fast_a: "Reference genome/transcriptome FASTA file for mapping."
  }
}