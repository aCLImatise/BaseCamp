version 1.0

task TomboEventResquiggle {
  input {
    Int? minimap_two_executable
    Int? minimap_two_index
    File? bwa_mem_executable
    File? graph_map_executable
    Int? alignment_batch_size
    String? normalization_type
    File? pore_model_filename
    Int? outlier_threshold
    Array[String] obs_per_base_filter
    String? timeout
    Int? cpts_limit
    Boolean? skip_index
    Boolean? overwrite
    File? failed_reads_filename
    Boolean? include_event_stdev
    Int? corrected_group
    Int? base_call_group
    Array[String] base_call_subgroups
    Int? processes
    Int? align_processes
    Int? align_threads_per_process
    Int? re_squiggle_processes
    Boolean? quiet
    Int fast_five_basedir
    String genome_fast_a
  }
  command <<<
    tombo event_resquiggle \
      ~{fast_five_basedir} \
      ~{genome_fast_a} \
      ~{if defined(minimap_two_executable) then ("--minimap2-executable " +  '"' + minimap_two_executable + '"') else ""} \
      ~{if defined(minimap_two_index) then ("--minimap2-index " +  '"' + minimap_two_index + '"') else ""} \
      ~{if defined(bwa_mem_executable) then ("--bwa-mem-executable " +  '"' + bwa_mem_executable + '"') else ""} \
      ~{if defined(graph_map_executable) then ("--graphmap-executable " +  '"' + graph_map_executable + '"') else ""} \
      ~{if defined(alignment_batch_size) then ("--alignment-batch-size " +  '"' + alignment_batch_size + '"') else ""} \
      ~{if defined(normalization_type) then ("--normalization-type " +  '"' + normalization_type + '"') else ""} \
      ~{if defined(pore_model_filename) then ("--pore-model-filename " +  '"' + pore_model_filename + '"') else ""} \
      ~{if defined(outlier_threshold) then ("--outlier-threshold " +  '"' + outlier_threshold + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(cpts_limit) then ("--cpts-limit " +  '"' + cpts_limit + '"') else ""} \
      ~{if (skip_index) then "--skip-index" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{if (include_event_stdev) then "--include-event-stdev" else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(align_processes) then ("--align-processes " +  '"' + align_processes + '"') else ""} \
      ~{if defined(align_threads_per_process) then ("--align-threads-per-process " +  '"' + align_threads_per_process + '"') else ""} \
      ~{if defined(re_squiggle_processes) then ("--resquiggle-processes " +  '"' + re_squiggle_processes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimap_two_executable: "Path to minimap2 executable."
    minimap_two_index: "Path to minimap2 index (with map-ont preset) file\\ncorresponding to the [genome_fasta] provided."
    bwa_mem_executable: "Path to bwa-mem executable."
    graph_map_executable: "Path to graphmap executable."
    alignment_batch_size: "Number of reads included in each alignment call. Note:\\nA new system mapping call is made for each batch\\n(including loading of the genome), so it is advised to\\nuse larger values for larger genomes. Default: 1000"
    normalization_type: "Choices: \\\"none\\\": raw 16-bit DAQ values, \\\"pA_raw\\\": pA\\nas in the ONT events (using offset, range and\\ndigitization), \\\"pA\\\": k-mer-based correction for pA\\ndrift as in nanopolish (requires [--pore-model-\\nfilename]), \\\"median\\\": median and MAD from raw signal.\\nDefault: median"
    pore_model_filename: "File containing kmer model parameters (level_mean and\\nlevel_stdv) used in order to compute kmer-based\\ncorrected pA values. E.g. https://github.com/jts/nanop\\nolish/blob/master/etc/r9-models/template_median68pA.5m\\ners.model"
    outlier_threshold: "Windosrize the signal at this number of scale values.\\nNegative value disables outlier clipping. Default:\\n5.000000"
    obs_per_base_filter: "Filter reads baseed on observations per base\\npercentile thresholds. Format thresholds as\\n\\\"percentile:thresh [pctl2:thresh2 ...]\\\". For example\\nto filter reads with 99th pctl > 200 obs/base or max >\\n5k obs/base use \\\"99:200 100:5000\\\"."
    timeout: "Timeout in seconds for processing a single read.\\nDefault: No timeout."
    cpts_limit: "Maximum number of changepoints to find within a single\\nindel group. Default: No limit."
    skip_index: "Skip creation of tombo index. This drastically slows\\ndownstream tombo commands. Default stores tombo index\\nnamed \\\".[--fast5-basedir].[--corrected-\\ngroup].tombo.index\\\" to be loaded automatically for\\ndownstream commands."
    overwrite: "Overwrite previous corrected group in FAST5 files.\\nNote: only effects --corrected-group or --new-\\ncorrected-group."
    failed_reads_filename: "Output failed read filenames with assoicated error.\\nDefault: Do not store failed reads."
    include_event_stdev: "Include corrected event standard deviation in output\\nFAST5 data."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_group: "FAST5 group obtain original basecalls (under Analyses\\ngroup). Default: Basecall_1D_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    processes: "Number of processes. Default: 2"
    align_processes: "Number of processes to use for parsing and aligning\\noriginal basecalls. Each process will independently\\nload the genome into memory, so use caution with\\nlarger genomes (e.g. human). Default: 1"
    align_threads_per_process: "Number of threads to use for aligner system call.\\nDefault: [--processes] / (2 * [--align-processes)]"
    re_squiggle_processes: "Number of processes to use for resquiggle algorithm.\\nDefault: [--processes] / 2"
    quiet: "Don't print status information."
    fast_five_basedir: "Directory containing fast5 files. All files ending in\\n\\\"fast5\\\" found recursively within this base directory\\nwill be processed."
    genome_fast_a: "Path to fasta file for mapping."
  }
  output {
    File out_stdout = stdout()
  }
}