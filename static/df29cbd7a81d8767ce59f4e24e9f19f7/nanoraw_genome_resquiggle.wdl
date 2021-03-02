version 1.0

task NanorawGenomeResquiggle {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    File? graph_map_executable
    File? bwa_mem_executable
    String? timeout
    Int? cpts_limit
    String? normalization_type
    File? pore_model_filename
    Int? outlier_threshold
    Int? fast_five_pattern
    Boolean? recursive
    Boolean? overwrite
    File? failed_reads_filename
    Int? corrected_group
    Int? base_call_group
    Int? processes
    Int? align_processes
    Int? align_threads_per_process
    Int? re_squiggle_processes
    Int? alignment_batch_size
    Boolean? skip_event_stdev
    Boolean? quiet
    Int fast_five_basedir
    String genome_fast_a
  }
  command <<<
    nanoraw genome_resquiggle \
      ~{fast_five_basedir} \
      ~{genome_fast_a} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (two_d) then "--2d" else ""} \
      ~{if defined(graph_map_executable) then ("--graphmap-executable " +  '"' + graph_map_executable + '"') else ""} \
      ~{if defined(bwa_mem_executable) then ("--bwa-mem-executable " +  '"' + bwa_mem_executable + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(cpts_limit) then ("--cpts-limit " +  '"' + cpts_limit + '"') else ""} \
      ~{if defined(normalization_type) then ("--normalization-type " +  '"' + normalization_type + '"') else ""} \
      ~{if defined(pore_model_filename) then ("--pore-model-filename " +  '"' + pore_model_filename + '"') else ""} \
      ~{if defined(outlier_threshold) then ("--outlier-threshold " +  '"' + outlier_threshold + '"') else ""} \
      ~{if defined(fast_five_pattern) then ("--fast5-pattern " +  '"' + fast_five_pattern + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(align_processes) then ("--align-processes " +  '"' + align_processes + '"') else ""} \
      ~{if defined(align_threads_per_process) then ("--align-threads-per-process " +  '"' + align_threads_per_process + '"') else ""} \
      ~{if defined(re_squiggle_processes) then ("--resquiggle-processes " +  '"' + re_squiggle_processes + '"') else ""} \
      ~{if defined(alignment_batch_size) then ("--alignment-batch-size " +  '"' + alignment_batch_size + '"') else ""} \
      ~{if (skip_event_stdev) then "--skip-event-stdev" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall-\\nsubgroups BaseCalled_template BaseCalled_complement`"
    graph_map_executable: "Relative or absolute path to built graphmap executable\\nor command name if globally installed."
    bwa_mem_executable: "Relative or absolute path to built bwa-mem executable\\nor command name if globally installed."
    timeout: "Timeout in seconds for the processing of a single\\nread. Default: No timeout."
    cpts_limit: "Maximum number of changepoints to find within a single\\nindel group. (Not setting this option can cause a\\nprocess to stall and cannot be controlled by the\\ntimeout option). Default: No limit."
    normalization_type: "Type of normalization to apply to raw signal when\\ncalculating statistics based on new segmentation.\\nShould be one of {\\\"median\\\", \\\"pA\\\", \\\"pA_raw\\\", \\\"none\\\"}.\\n\\\"none\\\" will provde the raw 16-bit DAQ values as the\\nraw signal is stored. \\\"pA_raw\\\" will calculate the pA\\nestimates as in the ONT events (using offset, range\\nand digitization parameters stored in the FAST5 file).\\n\\\"pA\\\" will first apply the \\\"pA_raw\\\" normalization\\nfollowed by kmer-based correction for pA drift as\\ndescribed in the nanopolish methylation manuscript\\n(this option requires the [--pore-model-filename]\\noption). \\\"median\\\" will shift by the median of each\\nreads' raw signal and scale by the MAD. Default:\\nmedian"
    pore_model_filename: "File containing kmer model parameters (level_mean and\\nlevel_stdv) used in order to compute kmer-based\\ncorrected pA values. E.g. https://github.com/jts/nanop\\nolish/blob/master/etc/r9-models/template_median68pA.5m\\ners.model"
    outlier_threshold: "Number of median absolute deviation (MAD) values at\\nwhich to clip the raw signal. This can help avoid\\nstrong re-segmentation artifacts from spikes in\\nsignal. Set to negative value to disable outlier\\nclipping. Default: 5"
    fast_five_pattern: "A pattern to search for a subset of files within\\nfast5-basedir. Note that on the unix command line\\npatterns may be expanded so it is best practice to\\nquote patterns."
    recursive: "Search for FAST5 files within immediate sub-\\ndirectories.Note that this only searches a single\\nlevel of subdirectories and only for files ending in\\n.fast5. This is equivalent to specifying\\n--fast5-pattern \\\"*/*.fast5\\\"."
    overwrite: "Overwrite previous corrected group in FAST5/HDF5 file.\\n(Note this only effects the group defined by\\n--corrected-group)."
    failed_reads_filename: "Output failed read filenames into a this file with\\nassoicated error for each read. Default: Do not store\\nfailed reads."
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    base_call_group: "FAST5 group to use for obtaining original basecalls\\n(under Analyses group). Default: Basecall_1D_000"
    processes: "Number of processes. Default: 2"
    align_processes: "Number of processes to use for aligning and parsing\\noriginal basecalls. Each process will independently\\nload the genome into memory, so use caution with\\nlarger genomes (e.g. human). Default: 1"
    align_threads_per_process: "Number of threads to use per alignment process. This\\nvalue is passed to the underlying mapper system calls.\\nDefault: [--processes] / (2 * [--align-processes)]"
    re_squiggle_processes: "Number of processes to use for re-squiggling raw data.\\nDefault: [--processes] / 2"
    alignment_batch_size: "Batch size (number of reads) for each alignment call.\\nNote that a new system call to the mapper is made for\\neach batch (including loading of the genome), so it is\\nadvised to use larger values for larger genomes.\\nDefault: 500"
    skip_event_stdev: "Skip computation of corrected event standard\\ndeviations to save (potentially significant) time on\\ncomputations."
    quiet: "Don't print status information."
    fast_five_basedir: "Directory containing fast5 files."
    genome_fast_a: "Path to fasta file for mapping."
  }
  output {
    File out_stdout = stdout()
    File out_failed_reads_filename = "${in_failed_reads_filename}"
  }
}