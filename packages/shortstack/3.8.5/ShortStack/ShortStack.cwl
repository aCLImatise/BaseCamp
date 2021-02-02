class: CommandLineTool
id: ShortStack.cwl
inputs:
- id: in_genome_file
  doc: '[string] : path to reference genome in .fasta or .fa format. Required for
    any run.'
  type: boolean
  inputBinding:
    prefix: --genomefile
- id: in_outdir
  doc: "[string] : name of output directory to be created for results. Defaults to\
    \ 'ShortStack_[time]',\nwhere [time] is the current UNIX time according to the\
    \ system. If the outdir already exists, ShortStack\nwill exit with an error message."
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_readfile
  doc: "[string] : path to readfile(s) to be aligned. valid formats: .fasta, .fa,\
    \ .fasta.gz,\n.fa.gz, .fastq, .fq, .fastq.gz, .fq.gz, .csfasta, .csfasta.gz. Multiple\
    \ files, can be specified as\nseparate arguments to --readfile ... e.g. --readfile\
    \ file1.fastq file2.fastq file3.fastq\nMutually exclusive with --bamfile or --cramfile."
  type: boolean
  inputBinding:
    prefix: --readfile
- id: in_adapter
  doc: "[string] : sequence of 3' adapter to trim off during read-pre processing.\
    \ Must be at least\n8 bases, with only ATCG characters. If not specified, reads\
    \ are assumed to be already trimmed."
  type: boolean
  inputBinding:
    prefix: --adapter
- id: in_bowtie_cores
  doc: "[integer] : Argument to be passed to bowtie's -p option, specifying number\
    \ of processor\ncores to request during alignment. Defaults to 1. Must be an integer\
    \ of 1 or more."
  type: boolean
  inputBinding:
    prefix: --bowtie_cores
- id: in_sort_mem
  doc: "[string] : Argument to be passed to samtools sort -m option, which sets the\
    \ maximum memory\nusage during bam file sorting. If not set, samtools sort defaults\
    \ it to 768M. Higher settings will\nreduce the overall time spent in alignment\
    \ phase, at cost of more memory usage. Use K/M/G suffixes to\nspecify kilobytes,\
    \ megabytes, and gigabytes, respectively. Extremely large alignment jobs will\n\
    crash (due to crash of samtools sort operation) if --sort_mem is not set high\
    \ enough. However, alignment\njobs will also crash if sort_mem is set too high,\
    \ and all physical memory on your machine is exahusted."
  type: boolean
  inputBinding:
    prefix: --sort_mem
- id: in_mismatches
  doc: "[integer] : Argument to be passed to bowtie's -v option, specifying number\
    \ of mismatches\nto be tolerated in a valid alignment. Must be either 0, 1, or\
    \ 2. In cases of multiple hits, only hits\nwith lowest number of mismatches kept.\
    \ Default: 1."
  type: boolean
  inputBinding:
    prefix: --mismatches
- id: in_c_quals
  doc: "[string] : path(s) to color-space quality value file(s). Used only in conjunction\
    \ with .csfasta\nor .csfasta.gz formatted files in --readfile. Compressed format\
    \ for cquals is NOT allowed. Like --readfile,\ncquals can take multiple arguments\
    \ for multiple files, e.g. --cquals file1.qual file2.qual file3.qual"
  type: boolean
  inputBinding:
    prefix: --cquals
- id: in_cram
  doc: ': When aligning, convert final alignment to cram format instead of the default
    bam format.'
  type: boolean
  inputBinding:
    prefix: --cram
- id: in_mmap
  doc: "[string] : Protocol for handling multi-mapped reads. Valid entries are n (none),\
    \ r (random), u (unique-\nseeded guide), or f (fractional-seeded guide). default:\
    \ u"
  type: boolean
  inputBinding:
    prefix: --mmap
- id: in_bowtie_m
  doc: "[string] : Setting to be passed to the -m option of bowtie. Over-ridden and\
    \ set to 1 if option\nmmap is set to n. This sets the maximum number of multi-mappings\
    \ allowed. Valid settings are integers >= 1 OR set 'all'\nto disable suppression\
    \ of highly multi-mapped reads. Default: 50"
  type: boolean
  inputBinding:
    prefix: --bowtie_m
- id: in_ran_max
  doc: "[string] : Reads with more than this number of possible alignment positions\
    \ where the\nchoice can't be guided by unequal  will be reported as unmapped.\
    \ Irrelevant if option mmap is set\nto n or r. Must be integer of 2 or greater\
    \ or set to 'none' to disable. Default: 3."
  type: boolean
  inputBinding:
    prefix: --ranmax
- id: in_align_only
  doc: ": If this switch is present, the ShortStack run will terminate after the alignment\
    \ phase\nwith no analysis performed."
  type: boolean
  inputBinding:
    prefix: --align_only
- id: in_show_secondaries
  doc: ": If this switch is present, the output alignment file will contain secondary\
    \ alignments\nas well as primary alignments for multi-mapped reads. Secondary\
    \ alignments have bit 256 set in the SAM FLAG field.\nThis option can increase\
    \ alignment file size, sometimes by a lot."
  type: boolean
  inputBinding:
    prefix: --show_secondaries
- id: in_keep_quals
  doc: ": As of version 3.5, by default ShortStack alignments no longer store the\
    \ quality values, to save space. Use\nof this switch will cause quality values\
    \ to be retained. Note that this increases file size."
  type: boolean
  inputBinding:
    prefix: --keep_quals
- id: in_bam_file
  doc: "[string] : path to input .bam alignment file of small RNAs. Only lines with\
    \ bits 4 and 256\nunset will be used. Mutually exclusive with --readfile or --cramfile."
  type: boolean
  inputBinding:
    prefix: --bamfile
- id: in_cram_file
  doc: "[string] : path to input .cram alignment file of small RNAs. Only lines with\
    \ bits 4 and 256\nunset will be used. Mutually exclusive with --readfile or --bamfile."
  type: boolean
  inputBinding:
    prefix: --cramfile
- id: in_dicer_min
  doc: "[integer] : Minimum size of a Dicer-processed small RNA. Must be an integer\
    \ of at least 15\nand <= dicermax. Default: 20."
  type: boolean
  inputBinding:
    prefix: --dicermin
- id: in_dicer_max
  doc: "[integer] : Maximum size of a Dicer-processed small RNA. Must be an integer\
    \ of at least 15\nand >= dicermin. Deafult: 24."
  type: boolean
  inputBinding:
    prefix: --dicermax
- id: in_fold_size
  doc: "[integer] : Size of genomic RNA segments for folding during MIRNA search.\
    \ Any loci larger\nthan this size will not be analyzed with respect for MIRNA\
    \ features. Must be an integer of at\nleast 200 and no larger than 1,000. Default:\
    \ 300. Note that increasing this setting may drastically\nincrease runtimes."
  type: boolean
  inputBinding:
    prefix: --foldsize
- id: in_loci_file
  doc: "[string] : Path to a tab-delimited plain-text file listing intervals to analyze.\
    \ Lines\nstarting with # are ignored. First column is coordinate in format Chr:start-stop,\
    \ second column\nis names (optional), and any other columns are ignored. Mutually\
    \ exclusive with option --locus."
  type: boolean
  inputBinding:
    prefix: --locifile
- id: in_locus
  doc: "[string] : Analyze the specified interval(s). Interval(s) is specified in\
    \ format Chr:start-stop.\nMultiple intervals can be specified in a comma-separated\
    \ list. Mutually exclusive with option\n--locifile. Specify the value for --total_primaries\
    \ to make a single locus run fast."
  type: boolean
  inputBinding:
    prefix: --locus
- id: in_no_hp
  doc: ': Disable MIRNA search.'
  type: boolean
  inputBinding:
    prefix: --nohp
- id: in_pad
  doc: "[integer] : Initially found clusters of small RNAs will be merged if the distance\
    \ between them is\nless than or equal to the value of pad. Must be an integer\
    \ between 0 and 50000. Default: 75."
  type: boolean
  inputBinding:
    prefix: --pad
- id: in_min_cov
  doc: "[string] : Clusters of small RNAs must have at least this many alignments.\
    \ Supply an\ninteger between 1 and 50000. Can also be a normalized value in reads\
    \ per million (rpm) OR reads per million mapped (rpmm). When specifying mincov\
    \ in\nrpm or rpmm, the mincov value must be a floating point number > 0 and <\
    \ 500,000 followed\nby the string 'rpm' or 'rpmm'. Examples: '5' --> threshold\
    \ is 5 raw reads. '3.2rpm' --> threshold is\n3.2 reads per million mapped. '2.8rpmm'\
    \ --> threshold is 2.8 reads per million mapped. Deafult: 0.5rpm."
  type: boolean
  inputBinding:
    prefix: --mincov
- id: in_strand_cut_off
  doc: "[float] : Cutoff for calling the strandedness of a locus. Must be a floating\
    \ point number\nbetween 0.5 and 1 (inclusive). DEFAULT: 0.8. At default of 0.8,\
    \ a locus must have 80% of more of its\nreads on the top strand to be called a\
    \ + strand locus, or 20% or less on the top strand to be a -\nstrand locus. All\
    \ others receive no strand call (e.g. '.'). Only stranded loci are analyzed for\n\
    MIRNAs, while only unstranded loci are analyzed with respect to phasing. Most\
    \ users probably want\nto use the default setting of 0.8."
  type: boolean
  inputBinding:
    prefix: --strand_cutoff
- id: in_total_primaries
  doc: "[integer] : Tell ShortStack the total number of primary alignments in the\
    \ bam file. Specifying\nthis value here speeds the analysis, since ShortStack\
    \ does not need to count the reads directly from the bam file.\nCan only be specified\
    \ in conjunction with --bamfile. This count should include all primary alignment\
    \ INCLUDING unplaced ones."
  type: boolean
  inputBinding:
    prefix: --total_primaries
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "[string] : name of output directory to be created for results. Defaults to\
    \ 'ShortStack_[time]',\nwhere [time] is the current UNIX time according to the\
    \ system. If the outdir already exists, ShortStack\nwill exit with an error message."
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- ShortStack
