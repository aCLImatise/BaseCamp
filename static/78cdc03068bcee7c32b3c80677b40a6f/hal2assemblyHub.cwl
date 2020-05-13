class: CommandLineTool
id: hal2assemblyHub.py.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hub
  doc: a single-word name of the directory containing the track hub files. Not displayed
    to hub users. Default=myHub
  type: string
  inputBinding:
    prefix: --hub
- id: short_label
  doc: the short name for the track hub. Suggested maximum length is 17 characters.
    Displayed as the hub name on the Track Hubs page and the track group name on the
    browser tracks page. Default=my hub
  type: string
  inputBinding:
    prefix: --shortLabel
- id: long_label
  doc: a longer descriptive label for the track hub. Suggested maximum length is 80
    characters. Displayed in the description field on the Track Hubs page. Default=my
    hub
  type: string
  inputBinding:
    prefix: --longLabel
- id: email
  doc: the contact to whom questions regarding the track hub should be directed. Default=NoEmail
  type: string
  inputBinding:
    prefix: --email
- id: genomes
  doc: File specified list of genomes to make browser for. If specified, only create
    browsers for these genomes in the order provided by the list. Otherwise create
    browsers for all genomes in the input hal file
  type: string
  inputBinding:
    prefix: --genomes
- id: rename
  doc: 'File that maps halfile genomeNames to names displayed on the browser. Format:
    <halGenomeName>\t<genomeNameToDisplayOnBrowser>. Default=none'
  type: string
  inputBinding:
    prefix: --rename
- id: tree
  doc: Newick binary tree. The order of the tracks and the default track layout will
    be based on this tree if option "genomes" is not specified. If not specified,
    try to extract the newick tree from the input halfile.
  type: string
  inputBinding:
    prefix: --tree
- id: url
  doc: Public url of the hub location
  type: string
  inputBinding:
    prefix: --url
- id: two_bit_dir
  doc: 'Optional. Directory containing the 2bit files of each genomes. Default: extract
    from the input hal file.'
  type: string
  inputBinding:
    prefix: --twobitdir
- id: lod
  doc: If specified, create "level of detail" (lod) hal files and will put the lod.txt
    at the bigUrl instead of the original hal file. Default=False
  type: boolean
  inputBinding:
    prefix: --lod
- id: lod_txt_file
  doc: '"hal Level of detail" lod text file. If specified, will put this at the bigUrl
    instead of the hal file. Default=none'
  type: string
  inputBinding:
    prefix: --lodTxtFile
- id: lod_dir
  doc: '"hal Level of detail" lod dir. If specified, will put this at the bigUrl instead
    of the hal file. Default=none'
  type: string
  inputBinding:
    prefix: --lodDir
- id: lod_max_block
  doc: Maximum number of blocks to display in a hal level of detail (see halLodInterpolate.py
    --help for the default value).
  type: string
  inputBinding:
    prefix: --lodMaxBlock
- id: lod_scale
  doc: Scaling factor between two successive levels of detail (see halLodInterpolate.py
    --help for the default value).
  type: string
  inputBinding:
    prefix: --lodScale
- id: lod_max_dna
  doc: Maximum query length such that its hal level of detail will contain nucleotide
    information. Default=none (see halLodInterpolate.py --help for the default value).
  type: string
  inputBinding:
    prefix: --lodMaxDNA
- id: lod_in_memory
  doc: Load entire hal file into memory when generating levels of detail instead of
    using hdf5 cache. Could result in drastic speedup. Default=False.
  type: boolean
  inputBinding:
    prefix: --lodInMemory
- id: lod_min_seq_frac
  doc: 'Minumum sequence length to sample as fraction of step size for level of detail
    generation: ie sequences with length <= floor(minSeqFrac * step) are ignored (see
    halLodExtract --help for default value).'
  type: string
  inputBinding:
    prefix: --lodMinSeqFrac
- id: lod_min_cov_frac
  doc: Minimum fraction of a genome that must be covered by sequences that exceed
    --minSeqFrac * step.  LODs that would violate this threshold will not be generated
    (or displayed in  the browser).  This is seen a better than the alternative, which
    is to produce unreasonably sparse LODs because half the sequences were not sampled
    (see halLodInterpolate.py --help for default value).
  type: string
  inputBinding:
    prefix: --lodMinCovFrac
- id: lod_chunk
  doc: HDF5 chunk size for generated levels of detail (see halLodExtract --help for
    default value).
  type: string
  inputBinding:
    prefix: --lodChunk
- id: bed_dirs
  doc: 'comma separated list of directories containing bed files of the input genomes.
    Each directory represents a type of annotation. The annotations of each genome
    will then be liftovered to all other genomes in the MSA. Example: "genes,genomicIsland,tRNA".
    Format of each directory: bedDir/ then genome1/ then chr1.bed, chr2.bed... Default=none'
  type: string
  inputBinding:
    prefix: --bedDirs
- id: final_big_bed_dirs
  doc: 'comma separated list of directories containing final big bed files to be displayed.
    No liftover will be done for these files. Each directory represents a type of
    annotation. Example: "genes,genomicIsland,tRNA". Format of each directory: bbDir/
    then queryGenome/ then targetGenome1.bb, targetGenome2.bb ... (so annotation of
    queryGenome has been mapped to targetGenomes and will be display on the targetGenome
    browsers). Default=none'
  type: string
  inputBinding:
    prefix: --finalBigBedDirs
- id: beddirs2
  doc: Similar to --bedDirs, except these tracks will be kept separately and out of
    the composite track. Default=none
  type: string
  inputBinding:
    prefix: --bedDirs2
- id: final_bigbeddirs2
  doc: Similar to --finalBigBedDirs, except these tracks will be kept separately and
    out of the composite track. Default=none
  type: string
  inputBinding:
    prefix: --finalBigBedDirs2
- id: no_bed_lift_over
  doc: If specified, will not lift over the bed annotations. Default=False
  type: boolean
  inputBinding:
    prefix: --noBedLiftover
- id: tabbed
  doc: 'If specified, treat tab as the delimiter of all the bed files. Default: any
    white space.'
  type: boolean
  inputBinding:
    prefix: --tabBed
- id: wig_dirs
  doc: 'comma separated list of directories containing wig files of the input genomes.
    Each directory represents a type of annotation. The annotations of each genome
    will then be liftovered to all other genomes in the MSA. Example: "genes,genomicIsland,tRNA".
    Format of each directory: wigDir/ then genome1/ then chr1.wig, chr2.wig... Default=none'
  type: string
  inputBinding:
    prefix: --wigDirs
- id: final_bigwig_dirs
  doc: 'comma separated list of directories containing final big wig files to be displayed.
    No liftover will be done for these files. Each directory represents a type of
    annotation. Example: "readCoverage,". Format of each directory: bwDir/ then queryGenome/
    then targetGenome1.bw, targetGenome2.bw ... (so annotation of queryGenome has
    been mapped to targetGenomes and will be display on the targetGenome browsers).
    Default=none'
  type: string
  inputBinding:
    prefix: --finalBigwigDirs
- id: no_wig_lift_over
  doc: If specified, will not lift over the wig annotations. Default=False
  type: boolean
  inputBinding:
    prefix: --nowigLiftover
- id: rms_k_dir
  doc: "Directory containing repeatMasker's output files for each genome. Format:\
    \ rmskDir/ then genome1/ then genome.rmsk.SINE.bb, genome.rmsk.LINE.bb, ... Default=none"
  type: string
  inputBinding:
    prefix: --rmskDir
- id: gc_content
  doc: If specified, make GC-content tracks. Default=False
  type: boolean
  inputBinding:
    prefix: --gcContent
- id: align_ability
  doc: If specified, make Alignability (aka Alignment Depth) tracks. Default=False
  type: boolean
  inputBinding:
    prefix: --alignability
- id: conservation
  doc: Bed file providing regions to calculate the conservation tracks.
  type: string
  inputBinding:
    prefix: --conservation
- id: conservation_dir
  doc: Optional. Directory contains conservation bigwigs if available. These bigwigs
    will be used. If this is not specified, the program will compute the conservation
    tracks.
  type: string
  inputBinding:
    prefix: --conservationDir
- id: conservation_genome_name
  doc: Name of the genome of the bed file provided in the "-- conversation" option
  type: string
  inputBinding:
    prefix: --conservationGenomeName
- id: conservation_tree
  doc: Optional. Newick tree for the conservation track
  type: string
  inputBinding:
    prefix: --conservationTree
- id: conservation_num_proc
  doc: Optional. Number of processors to run conservation
  type: string
  inputBinding:
    prefix: --conservationNumProc
- id: clade_exclusive_regions
  doc: If specified, will generate tracks of regions that are exclusive to each branch
    (including leaf "branches", which will be genome-exclusive regions) on the tree.
    Default=False
  type: boolean
  inputBinding:
    prefix: --cladeExclusiveRegions
- id: max_out_group_genomes
  doc: Maximum number of outgroup genomes that a region is allowed to be in. Default=0
  type: long
  inputBinding:
    prefix: --maxOutgroupGenomes
- id: min_in_group_genomes
  doc: Minimum number of ingroup genomes that a region must appear in. Default=all
    ingroup genomes (branch node and all its children).
  type: long
  inputBinding:
    prefix: --minIngroupGenomes
- id: self_alignment_snakes
  doc: Produce a self-alignment snake track for every genome
  type: boolean
  inputBinding:
    prefix: --selfAlignmentSnakes
- id: logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logOff
- id: loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: loglevel
  doc: Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)
  type: string
  inputBinding:
    prefix: --logLevel
- id: log_file
  doc: File to log in
  type: string
  inputBinding:
    prefix: --logFile
- id: rotating_logging
  doc: Turn on rotating logging, which prevents log files getting too big.
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: job_tree
  doc: Directory in which to place job management files and the global accessed temporary
    file directories(this needs to be globally accessible by all machines running
    jobs). If you pass an existing directory it will check if it's a valid existing
    job tree, then try and restart the jobs in it. The default=./jobTree
  type: string
  inputBinding:
    prefix: --jobTree
- id: stats
  doc: Records statistics about the job-tree to be used by jobTreeStats. default=False
  type: boolean
  inputBinding:
    prefix: --stats
- id: batch_system
  doc: The type of batch system to run the job(s) with, currently can be 'singleMachine'/'parasol'/'acidTest'/
    'gridEngine'/'lsf'. default=singleMachine
  type: string
  inputBinding:
    prefix: --batchSystem
- id: max_threads
  doc: The maximum number of threads (technically processes at this point) to use
    when running in single machine mode. Increasing this will allow more jobs to run
    concurrently when running on a single machine. default=4
  type: long
  inputBinding:
    prefix: --maxThreads
- id: parasol_command
  doc: The command to run the parasol program default=parasol
  type: string
  inputBinding:
    prefix: --parasolCommand
- id: default_memory
  doc: The default amount of memory to request for a job (in bytes), by default is
    2^31 = 2 gigabytes, default=2147483648
  type: string
  inputBinding:
    prefix: --defaultMemory
- id: default_cpu
  doc: The default the number of cpus to dedicate a job. default=1
  type: string
  inputBinding:
    prefix: --defaultCpu
- id: max_cpus
  doc: The maximum number of cpus to request from the batch system at any one time.
    default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxCpus
- id: max_memory
  doc: The maximum amount of memory to request from the batch system at any one time.
    default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxMemory
- id: retry_count
  doc: Number of times to retry a failing job before giving up and labeling job failed.
    default=0
  type: string
  inputBinding:
    prefix: --retryCount
- id: max_job_duration
  doc: Maximum runtime of a job (in seconds) before we kill it (this is a lower bound,
    and the actual time before killing the job may be longer). default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: rescue_jobs_frequency
  doc: Period of time to wait (in seconds) between checking for missing/overlong jobs,
    that is jobs which get lost by the batch system. Expert parameter. (default is
    set by the batch system)
  type: string
  inputBinding:
    prefix: --rescueJobsFrequency
- id: big_batch_system
  doc: The batch system to run for jobs with larger memory/cpus requests, currently
    can be 'singleMachine'/'parasol'/'acidTest'/'gridEngine'. default=none
  type: string
  inputBinding:
    prefix: --bigBatchSystem
- id: big_memory_threshold
  doc: The memory threshold above which to submit to the big queue. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigMemoryThreshold
- id: big_cpu_threshold
  doc: The cpu threshold above which to submit to the big queue. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigCpuThreshold
- id: big_max_cpus
  doc: The maximum number of big batch system cpus to allow at one time on the big
    queue. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigMaxCpus
- id: big_max_memory
  doc: The maximum amount of memory to request from the big batch system at any one
    time. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigMaxMemory
- id: job_time
  doc: The approximate time (in seconds) that you'd like a list of child jobs to be
    run serially before being parallelized. This parameter allows one to avoid over
    parallelizing tiny jobs, and therefore paying significant scheduling overhead,
    by running tiny jobs in series on a single node/core of the cluster. default=30
  type: string
  inputBinding:
    prefix: --jobTime
- id: max_log_file_size
  doc: The maximum size of a job log file to keep (in bytes), log files larger than
    this will be truncated to the last X bytes. Default is 50 kilobytes, default=50120
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: command
  doc: The command to run (which will generate subsequent jobs). This is deprecated
  type: string
  inputBinding:
    prefix: --command
outputs: []
cwlVersion: v1.1
baseCommand:
- hal2assemblyHub.py
