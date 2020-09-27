version 1.0

task Hal2assemblyHubpy {
  input {
    Boolean? cp_hal_file_to_out
    Boolean? ucsc_names
    Directory? hub
    Int? short_label
    Int? long_label
    String? email
    File? genomes
    File? rename
    File? tree
    String? url
    File? two_bit_dir
    Boolean? lod
    File? lod_txt_file
    File? lod_dir
    Int? lod_max_block
    String? lod_scale
    Int? lod_max_dna
    Boolean? lod_in_memory
    Int? lod_min_seq_frac
    Int? lod_min_cov_frac
    Int? lod_chunk
    Directory? bed_dirs
    Directory? final_big_bed_dirs
    Int? bed_dirs_two
    Int? final_big_bed_dirs_two
    Boolean? no_bed_lift_over
    Boolean? tabbed
    Directory? wig_dirs
    Directory? final_bigwig_dirs
    Boolean? no_wig_lift_over
    Directory? rms_k_dir
    Boolean? gc_content
    Boolean? align_ability
    File? conservation
    Directory? conservation_dir
    File? conservation_genome_name
    String? conservation_tree
    Int? conservation_num_proc
    Boolean? clade_exclusive_regions
    Int? max_out_group_genomes
    Int? min_in_group_genomes
    Boolean? self_alignment_snakes
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    File? log_file
    Boolean? rotating_logging
    File? job_tree
    Boolean? stats
    String? batch_system
    Int? max_threads
    String? parasol_command
    Int? default_memory
    Int? default_cpu
    Int? max_cpus
    Int? max_memory
    Int? retry_count
    Int? max_job_duration
    String? rescue_jobs_frequency
    String? big_batch_system
    Int? big_memory_threshold
    Int? big_cpu_threshold
    Int? big_max_cpus
    Int? big_max_memory
    Int? job_time
    Int? max_log_file_size
    String? command_run_generate
    String hal_file
    String output_directory
  }
  command <<<
    hal2assemblyHub_py \
      ~{hal_file} \
      ~{output_directory} \
      ~{if (cp_hal_file_to_out) then "--cpHalFileToOut" else ""} \
      ~{if (ucsc_names) then "--ucscNames" else ""} \
      ~{if defined(hub) then ("--hub " +  '"' + hub + '"') else ""} \
      ~{if defined(short_label) then ("--shortLabel " +  '"' + short_label + '"') else ""} \
      ~{if defined(long_label) then ("--longLabel " +  '"' + long_label + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(two_bit_dir) then ("--twobitdir " +  '"' + two_bit_dir + '"') else ""} \
      ~{if (lod) then "--lod" else ""} \
      ~{if defined(lod_txt_file) then ("--lodTxtFile " +  '"' + lod_txt_file + '"') else ""} \
      ~{if defined(lod_dir) then ("--lodDir " +  '"' + lod_dir + '"') else ""} \
      ~{if defined(lod_max_block) then ("--lodMaxBlock " +  '"' + lod_max_block + '"') else ""} \
      ~{if defined(lod_scale) then ("--lodScale " +  '"' + lod_scale + '"') else ""} \
      ~{if defined(lod_max_dna) then ("--lodMaxDNA " +  '"' + lod_max_dna + '"') else ""} \
      ~{if (lod_in_memory) then "--lodInMemory" else ""} \
      ~{if defined(lod_min_seq_frac) then ("--lodMinSeqFrac " +  '"' + lod_min_seq_frac + '"') else ""} \
      ~{if defined(lod_min_cov_frac) then ("--lodMinCovFrac " +  '"' + lod_min_cov_frac + '"') else ""} \
      ~{if defined(lod_chunk) then ("--lodChunk " +  '"' + lod_chunk + '"') else ""} \
      ~{if defined(bed_dirs) then ("--bedDirs " +  '"' + bed_dirs + '"') else ""} \
      ~{if defined(final_big_bed_dirs) then ("--finalBigBedDirs " +  '"' + final_big_bed_dirs + '"') else ""} \
      ~{if defined(bed_dirs_two) then ("--bedDirs2 " +  '"' + bed_dirs_two + '"') else ""} \
      ~{if defined(final_big_bed_dirs_two) then ("--finalBigBedDirs2 " +  '"' + final_big_bed_dirs_two + '"') else ""} \
      ~{if (no_bed_lift_over) then "--noBedLiftover" else ""} \
      ~{if (tabbed) then "--tabBed" else ""} \
      ~{if defined(wig_dirs) then ("--wigDirs " +  '"' + wig_dirs + '"') else ""} \
      ~{if defined(final_bigwig_dirs) then ("--finalBigwigDirs " +  '"' + final_bigwig_dirs + '"') else ""} \
      ~{if (no_wig_lift_over) then "--nowigLiftover" else ""} \
      ~{if defined(rms_k_dir) then ("--rmskDir " +  '"' + rms_k_dir + '"') else ""} \
      ~{if (gc_content) then "--gcContent" else ""} \
      ~{if (align_ability) then "--alignability" else ""} \
      ~{if defined(conservation) then ("--conservation " +  '"' + conservation + '"') else ""} \
      ~{if defined(conservation_dir) then ("--conservationDir " +  '"' + conservation_dir + '"') else ""} \
      ~{if defined(conservation_genome_name) then ("--conservationGenomeName " +  '"' + conservation_genome_name + '"') else ""} \
      ~{if defined(conservation_tree) then ("--conservationTree " +  '"' + conservation_tree + '"') else ""} \
      ~{if defined(conservation_num_proc) then ("--conservationNumProc " +  '"' + conservation_num_proc + '"') else ""} \
      ~{if (clade_exclusive_regions) then "--cladeExclusiveRegions" else ""} \
      ~{if defined(max_out_group_genomes) then ("--maxOutgroupGenomes " +  '"' + max_out_group_genomes + '"') else ""} \
      ~{if defined(min_in_group_genomes) then ("--minIngroupGenomes " +  '"' + min_in_group_genomes + '"') else ""} \
      ~{if (self_alignment_snakes) then "--selfAlignmentSnakes" else ""} \
      ~{if (logoff) then "--logOff" else ""} \
      ~{if (loginfo) then "--logInfo" else ""} \
      ~{if (log_debug) then "--logDebug" else ""} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{if (rotating_logging) then "--rotatingLogging" else ""} \
      ~{if defined(job_tree) then ("--jobTree " +  '"' + job_tree + '"') else ""} \
      ~{if (stats) then "--stats" else ""} \
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
    cp_hal_file_to_out: "If specified, copy the input halfile to the output\\ndirectory (instead of just make a softlink).\\nDefault=False"
    ucsc_names: "Assume that sequence headers use the UCSC naming\\nconvention, (i.e. \\\"genome.chr\\\"), and  attempt to\\nrename the sequences so that their names will end up\\nas \\\"chr\\\""
    hub: "a single-word name of the directory containing the\\ntrack hub files. Not displayed to hub users.\\nDefault=myHub"
    short_label: "the short name for the track hub. Suggested maximum\\nlength is 17 characters. Displayed as the hub name on\\nthe Track Hubs page and the track group name on the\\nbrowser tracks page. Default=my hub"
    long_label: "a longer descriptive label for the track hub.\\nSuggested maximum length is 80 characters. Displayed\\nin the description field on the Track Hubs page.\\nDefault=my hub"
    email: "the contact to whom questions regarding the track hub\\nshould be directed. Default=NoEmail"
    genomes: "File specified list of genomes to make browser for. If\\nspecified, only create browsers for these genomes in\\nthe order provided by the list. Otherwise create\\nbrowsers for all genomes in the input hal file"
    rename: "File that maps halfile genomeNames to names displayed\\non the browser. Format:\\n<halGenomeName>\\t<genomeNameToDisplayOnBrowser>.\\nDefault=none"
    tree: "Newick binary tree. The order of the tracks and the\\ndefault track layout will be based on this tree if\\noption \\\"genomes\\\" is not specified. If not specified,\\ntry to extract the newick tree from the input halfile."
    url: "Public url of the hub location"
    two_bit_dir: "Optional. Directory containing the 2bit files of each\\ngenomes. Default: extract from the input hal file."
    lod: "If specified, create \\\"level of detail\\\" (lod) hal files\\nand will put the lod.txt at the bigUrl instead of the\\noriginal hal file. Default=False"
    lod_txt_file: "\\\"hal Level of detail\\\" lod text file. If specified,\\nwill put this at the bigUrl instead of the hal file.\\nDefault=none"
    lod_dir: "\\\"hal Level of detail\\\" lod dir. If specified, will put\\nthis at the bigUrl instead of the hal file.\\nDefault=none"
    lod_max_block: "Maximum number of blocks to display in a hal level of\\ndetail (see halLodInterpolate.py --help for the\\ndefault value)."
    lod_scale: "Scaling factor between two successive levels of detail\\n(see halLodInterpolate.py --help for the default\\nvalue)."
    lod_max_dna: "Maximum query length such that its hal level of detail\\nwill contain nucleotide information. Default=none (see\\nhalLodInterpolate.py --help for the default value)."
    lod_in_memory: "Load entire hal file into memory when generating\\nlevels of detail instead of using hdf5 cache. Could\\nresult in drastic speedup. Default=False."
    lod_min_seq_frac: "Minumum sequence length to sample as fraction of step\\nsize for level of detail generation: ie sequences with\\nlength <= floor(minSeqFrac * step) are ignored (see\\nhalLodExtract --help for default value)."
    lod_min_cov_frac: "Minimum fraction of a genome that must be covered by\\nsequences that exceed --minSeqFrac * step.  LODs that\\nwould violate this threshold will not be generated (or\\ndisplayed in  the browser).  This is seen a better\\nthan the alternative, which is to produce unreasonably\\nsparse LODs because half the sequences were not\\nsampled (see halLodInterpolate.py --help for default\\nvalue)."
    lod_chunk: "HDF5 chunk size for generated levels of detail (see\\nhalLodExtract --help for default value)."
    bed_dirs: "comma separated list of directories containing bed\\nfiles of the input genomes. Each directory represents\\na type of annotation. The annotations of each genome\\nwill then be liftovered to all other genomes in the\\nMSA. Example: \\\"genes,genomicIsland,tRNA\\\". Format of\\neach directory: bedDir/ then genome1/ then chr1.bed,\\nchr2.bed... Default=none"
    final_big_bed_dirs: "comma separated list of directories containing final\\nbig bed files to be displayed. No liftover will be\\ndone for these files. Each directory represents a type\\nof annotation. Example: \\\"genes,genomicIsland,tRNA\\\".\\nFormat of each directory: bbDir/ then queryGenome/\\nthen targetGenome1.bb, targetGenome2.bb ... (so\\nannotation of queryGenome has been mapped to\\ntargetGenomes and will be display on the targetGenome\\nbrowsers). Default=none"
    bed_dirs_two: "Similar to --bedDirs, except these tracks will be kept\\nseparately and out of the composite track.\\nDefault=none"
    final_big_bed_dirs_two: "Similar to --finalBigBedDirs, except these tracks will\\nbe kept separately and out of the composite track.\\nDefault=none"
    no_bed_lift_over: "If specified, will not lift over the bed annotations.\\nDefault=False"
    tabbed: "If specified, treat tab as the delimiter of all the\\nbed files. Default: any white space."
    wig_dirs: "comma separated list of directories containing wig\\nfiles of the input genomes. Each directory represents\\na type of annotation. The annotations of each genome\\nwill then be liftovered to all other genomes in the\\nMSA. Example: \\\"genes,genomicIsland,tRNA\\\". Format of\\neach directory: wigDir/ then genome1/ then chr1.wig,\\nchr2.wig... Default=none"
    final_bigwig_dirs: "comma separated list of directories containing final\\nbig wig files to be displayed. No liftover will be\\ndone for these files. Each directory represents a type\\nof annotation. Example: \\\"readCoverage,\\\". Format of\\neach directory: bwDir/ then queryGenome/ then\\ntargetGenome1.bw, targetGenome2.bw ... (so annotation\\nof queryGenome has been mapped to targetGenomes and\\nwill be display on the targetGenome browsers).\\nDefault=none"
    no_wig_lift_over: "If specified, will not lift over the wig annotations.\\nDefault=False"
    rms_k_dir: "Directory containing repeatMasker's output files for\\neach genome. Format: rmskDir/ then genome1/ then\\ngenome.rmsk.SINE.bb, genome.rmsk.LINE.bb, ...\\nDefault=none"
    gc_content: "If specified, make GC-content tracks. Default=False"
    align_ability: "If specified, make Alignability (aka Alignment Depth)\\ntracks. Default=False"
    conservation: "Bed file providing regions to calculate the\\nconservation tracks."
    conservation_dir: "Optional. Directory contains conservation bigwigs if\\navailable. These bigwigs will be used. If this is not\\nspecified, the program will compute the conservation\\ntracks."
    conservation_genome_name: "Name of the genome of the bed file provided in the \\\"--\\nconversation\\\" option"
    conservation_tree: "Optional. Newick tree for the conservation track"
    conservation_num_proc: "Optional. Number of processors to run conservation"
    clade_exclusive_regions: "If specified, will generate tracks of regions that are\\nexclusive to each branch (including leaf \\\"branches\\\",\\nwhich will be genome-exclusive regions) on the tree.\\nDefault=False"
    max_out_group_genomes: "Maximum number of outgroup genomes that a region is\\nallowed to be in. Default=0"
    min_in_group_genomes: "Minimum number of ingroup genomes that a region must\\nappear in. Default=all ingroup genomes (branch node\\nand all its children)."
    self_alignment_snakes: "Produce a self-alignment snake track for every genome"
    logoff: "Turn off logging. (default is CRITICAL)"
    loginfo: "Turn on logging at INFO level. (default is CRITICAL)"
    log_debug: "Turn on logging at DEBUG level. (default is CRITICAL)"
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\\n(default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files\\ngetting too big."
    job_tree: "Directory in which to place job management files and\\nthe global accessed temporary file directories(this\\nneeds to be globally accessible by all machines\\nrunning jobs). If you pass an existing directory it\\nwill check if it's a valid existing job tree, then try\\nand restart the jobs in it. The default=./jobTree"
    stats: "Records statistics about the job-tree to be used by\\njobTreeStats. default=False"
    batch_system: "The type of batch system to run the job(s) with,\\ncurrently can be 'singleMachine'/'parasol'/'acidTest'/\\n'gridEngine'/'lsf'. default=singleMachine"
    max_threads: "The maximum number of threads (technically processes\\nat this point) to use when running in single machine\\nmode. Increasing this will allow more jobs to run\\nconcurrently when running on a single machine.\\ndefault=4"
    parasol_command: "The command to run the parasol program default=parasol"
    default_memory: "The default amount of memory to request for a job (in\\nbytes), by default is 2^31 = 2 gigabytes,\\ndefault=2147483648"
    default_cpu: "The default the number of cpus to dedicate a job.\\ndefault=1"
    max_cpus: "The maximum number of cpus to request from the batch\\nsystem at any one time. default=9223372036854775807"
    max_memory: "The maximum amount of memory to request from the batch\\nsystem at any one time. default=9223372036854775807"
    retry_count: "Number of times to retry a failing job before giving\\nup and labeling job failed. default=0"
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill\\nit (this is a lower bound, and the actual time before\\nkilling the job may be longer).\\ndefault=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking\\nfor missing/overlong jobs, that is jobs which get lost\\nby the batch system. Expert parameter. (default is set\\nby the batch system)"
    big_batch_system: "The batch system to run for jobs with larger\\nmemory/cpus requests, currently can be\\n'singleMachine'/'parasol'/'acidTest'/'gridEngine'.\\ndefault=none"
    big_memory_threshold: "The memory threshold above which to submit to the big\\nqueue. default=9223372036854775807"
    big_cpu_threshold: "The cpu threshold above which to submit to the big\\nqueue. default=9223372036854775807"
    big_max_cpus: "The maximum number of big batch system cpus to allow\\nat one time on the big queue.\\ndefault=9223372036854775807"
    big_max_memory: "The maximum amount of memory to request from the big\\nbatch system at any one time.\\ndefault=9223372036854775807"
    job_time: "The approximate time (in seconds) that you'd like a\\nlist of child jobs to be run serially before being\\nparallelized. This parameter allows one to avoid over\\nparallelizing tiny jobs, and therefore paying\\nsignificant scheduling overhead, by running tiny jobs\\nin series on a single node/core of the cluster.\\ndefault=30"
    max_log_file_size: "The maximum size of a job log file to keep (in bytes),\\nlog files larger than this will be truncated to the\\nlast X bytes. Default is 50 kilobytes, default=50120"
    command_run_generate: "The command to run (which will generate subsequent\\njobs). This is deprecated\\n"
    hal_file: ""
    output_directory: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_rms_k_dir = "${in_rms_k_dir}"
  }
}