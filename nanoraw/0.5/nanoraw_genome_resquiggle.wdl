version 1.0

task NanorawGenomeResquiggle {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    String? graph_map_executable
    String? bwa_mem_executable
    String? timeout
    String? cpts_limit
    String? normalization_type
    String? pore_model_filename
    String? outlier_threshold
    String? fast_five_pattern
    Boolean? recursive
    Boolean? overwrite
    String? failed_reads_filename
    String? corrected_group
    String? base_call_group
    String? processes
    String? align_processes
    String? align_threads_per_process
    String? re_squiggle_processes
    String? alignment_batch_size
    Boolean? skip_event_stdev
    Boolean? quiet
    String fast_five_basedir
    String genome_fast_a
  }
  command <<<
    nanoraw genome_resquiggle \
      ~{fast_five_basedir} \
      ~{genome_fast_a} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--2d" false="" two_d} \
      ~{if defined(graph_map_executable) then ("--graphmap-executable " +  '"' + graph_map_executable + '"') else ""} \
      ~{if defined(bwa_mem_executable) then ("--bwa-mem-executable " +  '"' + bwa_mem_executable + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(cpts_limit) then ("--cpts-limit " +  '"' + cpts_limit + '"') else ""} \
      ~{if defined(normalization_type) then ("--normalization-type " +  '"' + normalization_type + '"') else ""} \
      ~{if defined(pore_model_filename) then ("--pore-model-filename " +  '"' + pore_model_filename + '"') else ""} \
      ~{if defined(outlier_threshold) then ("--outlier-threshold " +  '"' + outlier_threshold + '"') else ""} \
      ~{if defined(fast_five_pattern) then ("--fast5-pattern " +  '"' + fast_five_pattern + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--overwrite" false="" overwrite} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(align_processes) then ("--align-processes " +  '"' + align_processes + '"') else ""} \
      ~{if defined(align_threads_per_process) then ("--align-threads-per-process " +  '"' + align_threads_per_process + '"') else ""} \
      ~{if defined(re_squiggle_processes) then ("--resquiggle-processes " +  '"' + re_squiggle_processes + '"') else ""} \
      ~{if defined(alignment_batch_size) then ("--alignment-batch-size " +  '"' + alignment_batch_size + '"') else ""} \
      ~{true="--skip-event-stdev" false="" skip_event_stdev} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template BaseCalled_complement`"
    graph_map_executable: "Relative or absolute path to built graphmap executable or command name if globally installed."
    bwa_mem_executable: "Relative or absolute path to built bwa-mem executable or command name if globally installed."
    timeout: "Timeout in seconds for the processing of a single read. Default: No timeout."
    cpts_limit: "Maximum number of changepoints to find within a single indel group. (Not setting this option can cause a process to stall and cannot be controlled by the timeout option). Default: No limit."
    normalization_type: "Type of normalization to apply to raw signal when calculating statistics based on new segmentation. Should be one of {\"median\", \"pA\", \"pA_raw\", \"none\"}. \"none\" will provde the raw 16-bit DAQ values as the raw signal is stored. \"pA_raw\" will calculate the pA estimates as in the ONT events (using offset, range and digitization parameters stored in the FAST5 file). \"pA\" will first apply the \"pA_raw\" normalization followed by kmer-based correction for pA drift as described in the nanopolish methylation manuscript (this option requires the [--pore-model-filename] option). \"median\" will shift by the median of each reads' raw signal and scale by the MAD. Default: median"
    pore_model_filename: "File containing kmer model parameters (level_mean and level_stdv) used in order to compute kmer-based corrected pA values. E.g. https://github.com/jts/nanop olish/blob/master/etc/r9-models/template_median68pA.5m ers.model"
    outlier_threshold: "Number of median absolute deviation (MAD) values at which to clip the raw signal. This can help avoid strong re-segmentation artifacts from spikes in signal. Set to negative value to disable outlier clipping. Default: 5"
    fast_five_pattern: "A pattern to search for a subset of files within fast5-basedir. Note that on the unix command line patterns may be expanded so it is best practice to quote patterns."
    recursive: "Search for FAST5 files within immediate sub- directories.Note that this only searches a single level of subdirectories and only for files ending in .fast5. This is equivalent to specifying --fast5-pattern \"*/*.fast5\"."
    overwrite: "Overwrite previous corrected group in FAST5/HDF5 file. (Note this only effects the group defined by --corrected-group)."
    failed_reads_filename: "Output failed read filenames into a this file with assoicated error for each read. Default: Do not store failed reads."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    base_call_group: "FAST5 group to use for obtaining original basecalls (under Analyses group). Default: Basecall_1D_000"
    processes: "Number of processes. Default: 2"
    align_processes: "Number of processes to use for aligning and parsing original basecalls. Each process will independently load the genome into memory, so use caution with larger genomes (e.g. human). Default: 1"
    align_threads_per_process: "Number of threads to use per alignment process. This value is passed to the underlying mapper system calls. Default: [--processes] / (2 * [--align-processes)]"
    re_squiggle_processes: "Number of processes to use for re-squiggling raw data. Default: [--processes] / 2"
    alignment_batch_size: "Batch size (number of reads) for each alignment call. Note that a new system call to the mapper is made for each batch (including loading of the genome), so it is advised to use larger values for larger genomes. Default: 500"
    skip_event_stdev: "Skip computation of corrected event standard deviations to save (potentially significant) time on computations."
    quiet: "Don't print status information."
    fast_five_basedir: "Directory containing fast5 files."
    genome_fast_a: "Path to fasta file for mapping."
  }
}