class: CommandLineTool
id: hal2assemblyHub.py.cwl
inputs:
- id: in_cp_hal_file_to_out
  doc: "If specified, copy the input halfile to the output\ndirectory (instead of\
    \ just make a softlink).\nDefault=False"
  type: boolean
  inputBinding:
    prefix: --cpHalFileToOut
- id: in_ucsc_names
  doc: "Assume that sequence headers use the UCSC naming\nconvention, (i.e. \"genome.chr\"\
    ), and  attempt to\nrename the sequences so that their names will end up\nas \"\
    chr\""
  type: boolean
  inputBinding:
    prefix: --ucscNames
- id: in_hub
  doc: "a single-word name of the directory containing the\ntrack hub files. Not displayed\
    \ to hub users.\nDefault=myHub"
  type: Directory
  inputBinding:
    prefix: --hub
- id: in_short_label
  doc: "the short name for the track hub. Suggested maximum\nlength is 17 characters.\
    \ Displayed as the hub name on\nthe Track Hubs page and the track group name on\
    \ the\nbrowser tracks page. Default=my hub"
  type: long
  inputBinding:
    prefix: --shortLabel
- id: in_long_label
  doc: "a longer descriptive label for the track hub.\nSuggested maximum length is\
    \ 80 characters. Displayed\nin the description field on the Track Hubs page.\n\
    Default=my hub"
  type: long
  inputBinding:
    prefix: --longLabel
- id: in_email
  doc: "the contact to whom questions regarding the track hub\nshould be directed.\
    \ Default=NoEmail"
  type: string
  inputBinding:
    prefix: --email
- id: in_genomes
  doc: "File specified list of genomes to make browser for. If\nspecified, only create\
    \ browsers for these genomes in\nthe order provided by the list. Otherwise create\n\
    browsers for all genomes in the input hal file"
  type: File
  inputBinding:
    prefix: --genomes
- id: in_rename
  doc: "File that maps halfile genomeNames to names displayed\non the browser. Format:\n\
    <halGenomeName>\\t<genomeNameToDisplayOnBrowser>.\nDefault=none"
  type: File
  inputBinding:
    prefix: --rename
- id: in_tree
  doc: "Newick binary tree. The order of the tracks and the\ndefault track layout\
    \ will be based on this tree if\noption \"genomes\" is not specified. If not specified,\n\
    try to extract the newick tree from the input halfile."
  type: File
  inputBinding:
    prefix: --tree
- id: in_url
  doc: Public url of the hub location
  type: string
  inputBinding:
    prefix: --url
- id: in_two_bit_dir
  doc: "Optional. Directory containing the 2bit files of each\ngenomes. Default: extract\
    \ from the input hal file."
  type: File
  inputBinding:
    prefix: --twobitdir
- id: in_lod
  doc: "If specified, create \"level of detail\" (lod) hal files\nand will put the\
    \ lod.txt at the bigUrl instead of the\noriginal hal file. Default=False"
  type: boolean
  inputBinding:
    prefix: --lod
- id: in_lod_txt_file
  doc: "\"hal Level of detail\" lod text file. If specified,\nwill put this at the\
    \ bigUrl instead of the hal file.\nDefault=none"
  type: File
  inputBinding:
    prefix: --lodTxtFile
- id: in_lod_dir
  doc: "\"hal Level of detail\" lod dir. If specified, will put\nthis at the bigUrl\
    \ instead of the hal file.\nDefault=none"
  type: File
  inputBinding:
    prefix: --lodDir
- id: in_lod_max_block
  doc: "Maximum number of blocks to display in a hal level of\ndetail (see halLodInterpolate.py\
    \ --help for the\ndefault value)."
  type: long
  inputBinding:
    prefix: --lodMaxBlock
- id: in_lod_scale
  doc: "Scaling factor between two successive levels of detail\n(see halLodInterpolate.py\
    \ --help for the default\nvalue)."
  type: string
  inputBinding:
    prefix: --lodScale
- id: in_lod_max_dna
  doc: "Maximum query length such that its hal level of detail\nwill contain nucleotide\
    \ information. Default=none (see\nhalLodInterpolate.py --help for the default\
    \ value)."
  type: long
  inputBinding:
    prefix: --lodMaxDNA
- id: in_lod_in_memory
  doc: "Load entire hal file into memory when generating\nlevels of detail instead\
    \ of using hdf5 cache. Could\nresult in drastic speedup. Default=False."
  type: boolean
  inputBinding:
    prefix: --lodInMemory
- id: in_lod_min_seq_frac
  doc: "Minumum sequence length to sample as fraction of step\nsize for level of detail\
    \ generation: ie sequences with\nlength <= floor(minSeqFrac * step) are ignored\
    \ (see\nhalLodExtract --help for default value)."
  type: long
  inputBinding:
    prefix: --lodMinSeqFrac
- id: in_lod_min_cov_frac
  doc: "Minimum fraction of a genome that must be covered by\nsequences that exceed\
    \ --minSeqFrac * step.  LODs that\nwould violate this threshold will not be generated\
    \ (or\ndisplayed in  the browser).  This is seen a better\nthan the alternative,\
    \ which is to produce unreasonably\nsparse LODs because half the sequences were\
    \ not\nsampled (see halLodInterpolate.py --help for default\nvalue)."
  type: long
  inputBinding:
    prefix: --lodMinCovFrac
- id: in_lod_chunk
  doc: "HDF5 chunk size for generated levels of detail (see\nhalLodExtract --help\
    \ for default value)."
  type: long
  inputBinding:
    prefix: --lodChunk
- id: in_bed_dirs
  doc: "comma separated list of directories containing bed\nfiles of the input genomes.\
    \ Each directory represents\na type of annotation. The annotations of each genome\n\
    will then be liftovered to all other genomes in the\nMSA. Example: \"genes,genomicIsland,tRNA\"\
    . Format of\neach directory: bedDir/ then genome1/ then chr1.bed,\nchr2.bed...\
    \ Default=none"
  type: Directory
  inputBinding:
    prefix: --bedDirs
- id: in_final_big_bed_dirs
  doc: "comma separated list of directories containing final\nbig bed files to be\
    \ displayed. No liftover will be\ndone for these files. Each directory represents\
    \ a type\nof annotation. Example: \"genes,genomicIsland,tRNA\".\nFormat of each\
    \ directory: bbDir/ then queryGenome/\nthen targetGenome1.bb, targetGenome2.bb\
    \ ... (so\nannotation of queryGenome has been mapped to\ntargetGenomes and will\
    \ be display on the targetGenome\nbrowsers). Default=none"
  type: Directory
  inputBinding:
    prefix: --finalBigBedDirs
- id: in_bed_dirs_two
  doc: "Similar to --bedDirs, except these tracks will be kept\nseparately and out\
    \ of the composite track.\nDefault=none"
  type: long
  inputBinding:
    prefix: --bedDirs2
- id: in_final_big_bed_dirs_two
  doc: "Similar to --finalBigBedDirs, except these tracks will\nbe kept separately\
    \ and out of the composite track.\nDefault=none"
  type: long
  inputBinding:
    prefix: --finalBigBedDirs2
- id: in_no_bed_lift_over
  doc: "If specified, will not lift over the bed annotations.\nDefault=False"
  type: boolean
  inputBinding:
    prefix: --noBedLiftover
- id: in_tabbed
  doc: "If specified, treat tab as the delimiter of all the\nbed files. Default: any\
    \ white space."
  type: boolean
  inputBinding:
    prefix: --tabBed
- id: in_wig_dirs
  doc: "comma separated list of directories containing wig\nfiles of the input genomes.\
    \ Each directory represents\na type of annotation. The annotations of each genome\n\
    will then be liftovered to all other genomes in the\nMSA. Example: \"genes,genomicIsland,tRNA\"\
    . Format of\neach directory: wigDir/ then genome1/ then chr1.wig,\nchr2.wig...\
    \ Default=none"
  type: Directory
  inputBinding:
    prefix: --wigDirs
- id: in_final_bigwig_dirs
  doc: "comma separated list of directories containing final\nbig wig files to be\
    \ displayed. No liftover will be\ndone for these files. Each directory represents\
    \ a type\nof annotation. Example: \"readCoverage,\". Format of\neach directory:\
    \ bwDir/ then queryGenome/ then\ntargetGenome1.bw, targetGenome2.bw ... (so annotation\n\
    of queryGenome has been mapped to targetGenomes and\nwill be display on the targetGenome\
    \ browsers).\nDefault=none"
  type: Directory
  inputBinding:
    prefix: --finalBigwigDirs
- id: in_no_wig_lift_over
  doc: "If specified, will not lift over the wig annotations.\nDefault=False"
  type: boolean
  inputBinding:
    prefix: --nowigLiftover
- id: in_rms_k_dir
  doc: "Directory containing repeatMasker's output files for\neach genome. Format:\
    \ rmskDir/ then genome1/ then\ngenome.rmsk.SINE.bb, genome.rmsk.LINE.bb, ...\n\
    Default=none"
  type: Directory
  inputBinding:
    prefix: --rmskDir
- id: in_gc_content
  doc: If specified, make GC-content tracks. Default=False
  type: boolean
  inputBinding:
    prefix: --gcContent
- id: in_align_ability
  doc: "If specified, make Alignability (aka Alignment Depth)\ntracks. Default=False"
  type: boolean
  inputBinding:
    prefix: --alignability
- id: in_conservation
  doc: "Bed file providing regions to calculate the\nconservation tracks."
  type: File
  inputBinding:
    prefix: --conservation
- id: in_conservation_dir
  doc: "Optional. Directory contains conservation bigwigs if\navailable. These bigwigs\
    \ will be used. If this is not\nspecified, the program will compute the conservation\n\
    tracks."
  type: Directory
  inputBinding:
    prefix: --conservationDir
- id: in_conservation_genome_name
  doc: "Name of the genome of the bed file provided in the \"--\nconversation\" option"
  type: File
  inputBinding:
    prefix: --conservationGenomeName
- id: in_conservation_tree
  doc: Optional. Newick tree for the conservation track
  type: string
  inputBinding:
    prefix: --conservationTree
- id: in_conservation_num_proc
  doc: Optional. Number of processors to run conservation
  type: long
  inputBinding:
    prefix: --conservationNumProc
- id: in_clade_exclusive_regions
  doc: "If specified, will generate tracks of regions that are\nexclusive to each\
    \ branch (including leaf \"branches\",\nwhich will be genome-exclusive regions)\
    \ on the tree.\nDefault=False"
  type: boolean
  inputBinding:
    prefix: --cladeExclusiveRegions
- id: in_max_out_group_genomes
  doc: "Maximum number of outgroup genomes that a region is\nallowed to be in. Default=0"
  type: long
  inputBinding:
    prefix: --maxOutgroupGenomes
- id: in_min_in_group_genomes
  doc: "Minimum number of ingroup genomes that a region must\nappear in. Default=all\
    \ ingroup genomes (branch node\nand all its children)."
  type: long
  inputBinding:
    prefix: --minIngroupGenomes
- id: in_self_alignment_snakes
  doc: Produce a self-alignment snake track for every genome
  type: boolean
  inputBinding:
    prefix: --selfAlignmentSnakes
- id: in_logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logOff
- id: in_loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: in_log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: in_loglevel
  doc: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\n(default is CRITICAL)"
  type: string
  inputBinding:
    prefix: --logLevel
- id: in_log_file
  doc: File to log in
  type: File
  inputBinding:
    prefix: --logFile
- id: in_rotating_logging
  doc: "Turn on rotating logging, which prevents log files\ngetting too big."
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: in_job_tree
  doc: "Directory in which to place job management files and\nthe global accessed\
    \ temporary file directories(this\nneeds to be globally accessible by all machines\n\
    running jobs). If you pass an existing directory it\nwill check if it's a valid\
    \ existing job tree, then try\nand restart the jobs in it. The default=./jobTree"
  type: File
  inputBinding:
    prefix: --jobTree
- id: in_stats
  doc: "Records statistics about the job-tree to be used by\njobTreeStats. default=False"
  type: boolean
  inputBinding:
    prefix: --stats
- id: in_batch_system
  doc: "The type of batch system to run the job(s) with,\ncurrently can be 'singleMachine'/'parasol'/'acidTest'/\n\
    'gridEngine'/'lsf'. default=singleMachine"
  type: string
  inputBinding:
    prefix: --batchSystem
- id: in_max_threads
  doc: "The maximum number of threads (technically processes\nat this point) to use\
    \ when running in single machine\nmode. Increasing this will allow more jobs to\
    \ run\nconcurrently when running on a single machine.\ndefault=4"
  type: long
  inputBinding:
    prefix: --maxThreads
- id: in_parasol_command
  doc: The command to run the parasol program default=parasol
  type: string
  inputBinding:
    prefix: --parasolCommand
- id: in_default_memory
  doc: "The default amount of memory to request for a job (in\nbytes), by default\
    \ is 2^31 = 2 gigabytes,\ndefault=2147483648"
  type: long
  inputBinding:
    prefix: --defaultMemory
- id: in_default_cpu
  doc: "The default the number of cpus to dedicate a job.\ndefault=1"
  type: long
  inputBinding:
    prefix: --defaultCpu
- id: in_max_cpus
  doc: "The maximum number of cpus to request from the batch\nsystem at any one time.\
    \ default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxCpus
- id: in_max_memory
  doc: "The maximum amount of memory to request from the batch\nsystem at any one\
    \ time. default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxMemory
- id: in_retry_count
  doc: "Number of times to retry a failing job before giving\nup and labeling job\
    \ failed. default=0"
  type: long
  inputBinding:
    prefix: --retryCount
- id: in_max_job_duration
  doc: "Maximum runtime of a job (in seconds) before we kill\nit (this is a lower\
    \ bound, and the actual time before\nkilling the job may be longer).\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: in_rescue_jobs_frequency
  doc: "Period of time to wait (in seconds) between checking\nfor missing/overlong\
    \ jobs, that is jobs which get lost\nby the batch system. Expert parameter. (default\
    \ is set\nby the batch system)"
  type: string
  inputBinding:
    prefix: --rescueJobsFrequency
- id: in_big_batch_system
  doc: "The batch system to run for jobs with larger\nmemory/cpus requests, currently\
    \ can be\n'singleMachine'/'parasol'/'acidTest'/'gridEngine'.\ndefault=none"
  type: string
  inputBinding:
    prefix: --bigBatchSystem
- id: in_big_memory_threshold
  doc: "The memory threshold above which to submit to the big\nqueue. default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigMemoryThreshold
- id: in_big_cpu_threshold
  doc: "The cpu threshold above which to submit to the big\nqueue. default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigCpuThreshold
- id: in_big_max_cpus
  doc: "The maximum number of big batch system cpus to allow\nat one time on the big\
    \ queue.\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigMaxCpus
- id: in_big_max_memory
  doc: "The maximum amount of memory to request from the big\nbatch system at any\
    \ one time.\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigMaxMemory
- id: in_job_time
  doc: "The approximate time (in seconds) that you'd like a\nlist of child jobs to\
    \ be run serially before being\nparallelized. This parameter allows one to avoid\
    \ over\nparallelizing tiny jobs, and therefore paying\nsignificant scheduling\
    \ overhead, by running tiny jobs\nin series on a single node/core of the cluster.\n\
    default=30"
  type: long
  inputBinding:
    prefix: --jobTime
- id: in_max_log_file_size
  doc: "The maximum size of a job log file to keep (in bytes),\nlog files larger than\
    \ this will be truncated to the\nlast X bytes. Default is 50 kilobytes, default=50120"
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: in_command
  doc: "The command to run (which will generate subsequent\njobs). This is deprecated\n"
  type: string
  inputBinding:
    prefix: --command
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rms_k_dir
  doc: "Directory containing repeatMasker's output files for\neach genome. Format:\
    \ rmskDir/ then genome1/ then\ngenome.rmsk.SINE.bb, genome.rmsk.LINE.bb, ...\n\
    Default=none"
  type: Directory
  outputBinding:
    glob: $(inputs.in_rms_k_dir)
cwlVersion: v1.1
baseCommand:
- hal2assemblyHub.py
