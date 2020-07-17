version 1.0

task Hal2assemblyHub.py {
  input {
    String? hub
    String? short_label
    String? long_label
    String? email
    String? genomes
    String? rename
    String? tree
    String? url
    String? two_bit_dir
    Boolean? lod
    String? lod_txt_file
    String? lod_dir
    String? lod_max_block
    String? lod_scale
    String? lod_max_dna
    Boolean? lod_in_memory
    String? lod_min_seq_frac
    String? lod_min_cov_frac
    String? lod_chunk
    String? bed_dirs
    String? final_big_bed_dirs
    String? bed_dirs_two
    String? final_big_bed_dirs_two
    Boolean? no_bed_lift_over
    Boolean? tabbed
    String? wig_dirs
    String? final_bigwig_dirs
    Boolean? no_wig_lift_over
    String? rms_k_dir
    Boolean? gc_content
    Boolean? align_ability
    String? conservation
    String? conservation_dir
    String? conservation_genome_name
    String? conservation_tree
    String? conservation_num_proc
    Boolean? clade_exclusive_regions
    Int? max_out_group_genomes
    Int? min_in_group_genomes
    Boolean? self_alignment_snakes
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    String? log_file
    Boolean? rotating_logging
    String? job_tree
    Boolean? stats
    String? batch_system
    Int? max_threads
    String? parasol_command
    String? default_memory
    String? default_cpu
    Int? max_cpus
    Int? max_memory
    String? retry_count
    Int? max_job_duration
    String? rescue_jobs_frequency
    String? big_batch_system
    String? big_memory_threshold
    String? big_cpu_threshold
    String? big_max_cpus
    String? big_max_memory
    String? job_time
    Int? max_log_file_size
    String? command_run_generate
    String hal_file
    String output_directory
  }
  command <<<
    hal2assemblyHub.py \
      ~{hal_file} \
      ~{output_directory} \
      ~{if defined(hub) then ("--hub " +  '"' + hub + '"') else ""} \
      ~{if defined(short_label) then ("--shortLabel " +  '"' + short_label + '"') else ""} \
      ~{if defined(long_label) then ("--longLabel " +  '"' + long_label + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(two_bit_dir) then ("--twobitdir " +  '"' + two_bit_dir + '"') else ""} \
      ~{true="--lod" false="" lod} \
      ~{if defined(lod_txt_file) then ("--lodTxtFile " +  '"' + lod_txt_file + '"') else ""} \
      ~{if defined(lod_dir) then ("--lodDir " +  '"' + lod_dir + '"') else ""} \
      ~{if defined(lod_max_block) then ("--lodMaxBlock " +  '"' + lod_max_block + '"') else ""} \
      ~{if defined(lod_scale) then ("--lodScale " +  '"' + lod_scale + '"') else ""} \
      ~{if defined(lod_max_dna) then ("--lodMaxDNA " +  '"' + lod_max_dna + '"') else ""} \
      ~{true="--lodInMemory" false="" lod_in_memory} \
      ~{if defined(lod_min_seq_frac) then ("--lodMinSeqFrac " +  '"' + lod_min_seq_frac + '"') else ""} \
      ~{if defined(lod_min_cov_frac) then ("--lodMinCovFrac " +  '"' + lod_min_cov_frac + '"') else ""} \
      ~{if defined(lod_chunk) then ("--lodChunk " +  '"' + lod_chunk + '"') else ""} \
      ~{if defined(bed_dirs) then ("--bedDirs " +  '"' + bed_dirs + '"') else ""} \
      ~{if defined(final_big_bed_dirs) then ("--finalBigBedDirs " +  '"' + final_big_bed_dirs + '"') else ""} \
      ~{if defined(bed_dirs_two) then ("--bedDirs2 " +  '"' + bed_dirs_two + '"') else ""} \
      ~{if defined(final_big_bed_dirs_two) then ("--finalBigBedDirs2 " +  '"' + final_big_bed_dirs_two + '"') else ""} \
      ~{true="--noBedLiftover" false="" no_bed_lift_over} \
      ~{true="--tabBed" false="" tabbed} \
      ~{if defined(wig_dirs) then ("--wigDirs " +  '"' + wig_dirs + '"') else ""} \
      ~{if defined(final_bigwig_dirs) then ("--finalBigwigDirs " +  '"' + final_bigwig_dirs + '"') else ""} \
      ~{true="--nowigLiftover" false="" no_wig_lift_over} \
      ~{if defined(rms_k_dir) then ("--rmskDir " +  '"' + rms_k_dir + '"') else ""} \
      ~{true="--gcContent" false="" gc_content} \
      ~{true="--alignability" false="" align_ability} \
      ~{if defined(conservation) then ("--conservation " +  '"' + conservation + '"') else ""} \
      ~{if defined(conservation_dir) then ("--conservationDir " +  '"' + conservation_dir + '"') else ""} \
      ~{if defined(conservation_genome_name) then ("--conservationGenomeName " +  '"' + conservation_genome_name + '"') else ""} \
      ~{if defined(conservation_tree) then ("--conservationTree " +  '"' + conservation_tree + '"') else ""} \
      ~{if defined(conservation_num_proc) then ("--conservationNumProc " +  '"' + conservation_num_proc + '"') else ""} \
      ~{true="--cladeExclusiveRegions" false="" clade_exclusive_regions} \
      ~{if defined(max_out_group_genomes) then ("--maxOutgroupGenomes " +  '"' + max_out_group_genomes + '"') else ""} \
      ~{if defined(min_in_group_genomes) then ("--minIngroupGenomes " +  '"' + min_in_group_genomes + '"') else ""} \
      ~{true="--selfAlignmentSnakes" false="" self_alignment_snakes} \
      ~{true="--logOff" false="" logoff} \
      ~{true="--logInfo" false="" loginfo} \
      ~{true="--logDebug" false="" log_debug} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotating_logging} \
      ~{if defined(job_tree) then ("--jobTree " +  '"' + job_tree + '"') else ""} \
      ~{true="--stats" false="" stats} \
      ~{if defined(batch_system) then ("--batchSystem " +  '"' + batch_system + '"') else ""} \
      ~{if defined(max_threads) then ("--maxThreads " +  '"' + max_threads + '"') else ""} \
      ~{if defined(parasol_command) then ("--parasolCommand " +  '"' + parasol_command + '"') else ""} \
      ~{if defined(default_memory) then ("--defaultMemory " +  '"' + default_memory + '"') else ""} \
      ~{if defined(default_cpu) then ("--defaultCpu " +  '"' + default_cpu + '"') else ""} \
      ~{if defined(max_cpus) then ("--maxCpus " +  '"' + max_cpus + '"') else ""} \
      ~{if defined(max_memory) then ("--maxMemory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(retry_count) then ("--retryCount " +  '"' + retry_count + '"') else ""} \
      ~{if defined(max_job_duration) then ("--maxJobDuration " +  '"' + max_job_duration + '"') else ""} \
      ~{if defined(rescue_jobs_frequency) then ("--rescueJobsFrequency " +  '"' + rescue_jobs_frequency + '"') else ""} \
      ~{if defined(big_batch_system) then ("--bigBatchSystem " +  '"' + big_batch_system + '"') else ""} \
      ~{if defined(big_memory_threshold) then ("--bigMemoryThreshold " +  '"' + big_memory_threshold + '"') else ""} \
      ~{if defined(big_cpu_threshold) then ("--bigCpuThreshold " +  '"' + big_cpu_threshold + '"') else ""} \
      ~{if defined(big_max_cpus) then ("--bigMaxCpus " +  '"' + big_max_cpus + '"') else ""} \
      ~{if defined(big_max_memory) then ("--bigMaxMemory " +  '"' + big_max_memory + '"') else ""} \
      ~{if defined(job_time) then ("--jobTime " +  '"' + job_time + '"') else ""} \
      ~{if defined(max_log_file_size) then ("--maxLogFileSize " +  '"' + max_log_file_size + '"') else ""} \
      ~{if defined(command_run_generate) then ("--command " +  '"' + command_run_generate + '"') else ""}
  >>>
  parameter_meta {
    hub: "a single-word name of the directory containing the track hub files. Not displayed to hub users. Default=myHub"
    short_label: "the short name for the track hub. Suggested maximum length is 17 characters. Displayed as the hub name on the Track Hubs page and the track group name on the browser tracks page. Default=my hub"
    long_label: "a longer descriptive label for the track hub. Suggested maximum length is 80 characters. Displayed in the description field on the Track Hubs page. Default=my hub"
    email: "the contact to whom questions regarding the track hub should be directed. Default=NoEmail"
    genomes: "File specified list of genomes to make browser for. If specified, only create browsers for these genomes in the order provided by the list. Otherwise create browsers for all genomes in the input hal file"
    rename: "File that maps halfile genomeNames to names displayed on the browser. Format: <halGenomeName>\t<genomeNameToDisplayOnBrowser>. Default=none"
    tree: "Newick binary tree. The order of the tracks and the default track layout will be based on this tree if option \"genomes\" is not specified. If not specified, try to extract the newick tree from the input halfile."
    url: "Public url of the hub location"
    two_bit_dir: "Optional. Directory containing the 2bit files of each genomes. Default: extract from the input hal file."
    lod: "If specified, create \"level of detail\" (lod) hal files and will put the lod.txt at the bigUrl instead of the original hal file. Default=False"
    lod_txt_file: "\"hal Level of detail\" lod text file. If specified, will put this at the bigUrl instead of the hal file. Default=none"
    lod_dir: "\"hal Level of detail\" lod dir. If specified, will put this at the bigUrl instead of the hal file. Default=none"
    lod_max_block: "Maximum number of blocks to display in a hal level of detail (see halLodInterpolate.py --help for the default value)."
    lod_scale: "Scaling factor between two successive levels of detail (see halLodInterpolate.py --help for the default value)."
    lod_max_dna: "Maximum query length such that its hal level of detail will contain nucleotide information. Default=none (see halLodInterpolate.py --help for the default value)."
    lod_in_memory: "Load entire hal file into memory when generating levels of detail instead of using hdf5 cache. Could result in drastic speedup. Default=False."
    lod_min_seq_frac: "Minumum sequence length to sample as fraction of step size for level of detail generation: ie sequences with length <= floor(minSeqFrac * step) are ignored (see halLodExtract --help for default value)."
    lod_min_cov_frac: "Minimum fraction of a genome that must be covered by sequences that exceed --minSeqFrac * step.  LODs that would violate this threshold will not be generated (or displayed in  the browser).  This is seen a better than the alternative, which is to produce unreasonably sparse LODs because half the sequences were not sampled (see halLodInterpolate.py --help for default value)."
    lod_chunk: "HDF5 chunk size for generated levels of detail (see halLodExtract --help for default value)."
    bed_dirs: "comma separated list of directories containing bed files of the input genomes. Each directory represents a type of annotation. The annotations of each genome will then be liftovered to all other genomes in the MSA. Example: \"genes,genomicIsland,tRNA\". Format of each directory: bedDir/ then genome1/ then chr1.bed, chr2.bed... Default=none"
    final_big_bed_dirs: "comma separated list of directories containing final big bed files to be displayed. No liftover will be done for these files. Each directory represents a type of annotation. Example: \"genes,genomicIsland,tRNA\". Format of each directory: bbDir/ then queryGenome/ then targetGenome1.bb, targetGenome2.bb ... (so annotation of queryGenome has been mapped to targetGenomes and will be display on the targetGenome browsers). Default=none"
    bed_dirs_two: "Similar to --bedDirs, except these tracks will be kept separately and out of the composite track. Default=none"
    final_big_bed_dirs_two: "Similar to --finalBigBedDirs, except these tracks will be kept separately and out of the composite track. Default=none"
    no_bed_lift_over: "If specified, will not lift over the bed annotations. Default=False"
    tabbed: "If specified, treat tab as the delimiter of all the bed files. Default: any white space."
    wig_dirs: "comma separated list of directories containing wig files of the input genomes. Each directory represents a type of annotation. The annotations of each genome will then be liftovered to all other genomes in the MSA. Example: \"genes,genomicIsland,tRNA\". Format of each directory: wigDir/ then genome1/ then chr1.wig, chr2.wig... Default=none"
    final_bigwig_dirs: "comma separated list of directories containing final big wig files to be displayed. No liftover will be done for these files. Each directory represents a type of annotation. Example: \"readCoverage,\". Format of each directory: bwDir/ then queryGenome/ then targetGenome1.bw, targetGenome2.bw ... (so annotation of queryGenome has been mapped to targetGenomes and will be display on the targetGenome browsers). Default=none"
    no_wig_lift_over: "If specified, will not lift over the wig annotations. Default=False"
    rms_k_dir: "Directory containing repeatMasker's output files for each genome. Format: rmskDir/ then genome1/ then genome.rmsk.SINE.bb, genome.rmsk.LINE.bb, ... Default=none"
    gc_content: "If specified, make GC-content tracks. Default=False"
    align_ability: "If specified, make Alignability (aka Alignment Depth) tracks. Default=False"
    conservation: "Bed file providing regions to calculate the conservation tracks."
    conservation_dir: "Optional. Directory contains conservation bigwigs if available. These bigwigs will be used. If this is not specified, the program will compute the conservation tracks."
    conservation_genome_name: "Name of the genome of the bed file provided in the \"-- conversation\" option"
    conservation_tree: "Optional. Newick tree for the conservation track"
    conservation_num_proc: "Optional. Number of processors to run conservation"
    clade_exclusive_regions: "If specified, will generate tracks of regions that are exclusive to each branch (including leaf \"branches\", which will be genome-exclusive regions) on the tree. Default=False"
    max_out_group_genomes: "Maximum number of outgroup genomes that a region is allowed to be in. Default=0"
    min_in_group_genomes: "Minimum number of ingroup genomes that a region must appear in. Default=all ingroup genomes (branch node and all its children)."
    self_alignment_snakes: "Produce a self-alignment snake track for every genome"
    logoff: "Turn off logging. (default is CRITICAL)"
    loginfo: "Turn on logging at INFO level. (default is CRITICAL)"
    log_debug: "Turn on logging at DEBUG level. (default is CRITICAL)"
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files getting too big."
    job_tree: "Directory in which to place job management files and the global accessed temporary file directories(this needs to be globally accessible by all machines running jobs). If you pass an existing directory it will check if it's a valid existing job tree, then try and restart the jobs in it. The default=./jobTree"
    stats: "Records statistics about the job-tree to be used by jobTreeStats. default=False"
    batch_system: "The type of batch system to run the job(s) with, currently can be 'singleMachine'/'parasol'/'acidTest'/ 'gridEngine'/'lsf'. default=singleMachine"
    max_threads: "The maximum number of threads (technically processes at this point) to use when running in single machine mode. Increasing this will allow more jobs to run concurrently when running on a single machine. default=4"
    parasol_command: "The command to run the parasol program default=parasol"
    default_memory: "The default amount of memory to request for a job (in bytes), by default is 2^31 = 2 gigabytes, default=2147483648"
    default_cpu: "The default the number of cpus to dedicate a job. default=1"
    max_cpus: "The maximum number of cpus to request from the batch system at any one time. default=9223372036854775807"
    max_memory: "The maximum amount of memory to request from the batch system at any one time. default=9223372036854775807"
    retry_count: "Number of times to retry a failing job before giving up and labeling job failed. default=0"
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill it (this is a lower bound, and the actual time before killing the job may be longer). default=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking for missing/overlong jobs, that is jobs which get lost by the batch system. Expert parameter. (default is set by the batch system)"
    big_batch_system: "The batch system to run for jobs with larger memory/cpus requests, currently can be 'singleMachine'/'parasol'/'acidTest'/'gridEngine'. default=none"
    big_memory_threshold: "The memory threshold above which to submit to the big queue. default=9223372036854775807"
    big_cpu_threshold: "The cpu threshold above which to submit to the big queue. default=9223372036854775807"
    big_max_cpus: "The maximum number of big batch system cpus to allow at one time on the big queue. default=9223372036854775807"
    big_max_memory: "The maximum amount of memory to request from the big batch system at any one time. default=9223372036854775807"
    job_time: "The approximate time (in seconds) that you'd like a list of child jobs to be run serially before being parallelized. This parameter allows one to avoid over parallelizing tiny jobs, and therefore paying significant scheduling overhead, by running tiny jobs in series on a single node/core of the cluster. default=30"
    max_log_file_size: "The maximum size of a job log file to keep (in bytes), log files larger than this will be truncated to the last X bytes. Default is 50 kilobytes, default=50120"
    command_run_generate: "The command to run (which will generate subsequent jobs). This is deprecated"
    hal_file: ""
    output_directory: ""
  }
}