version 1.0

task ShortStack {
  input {
    Boolean? genome_file
    Directory? outdir
    Boolean? readfile
    Boolean? adapter
    Boolean? bowtie_cores
    Boolean? sort_mem
    Boolean? mismatches
    Boolean? c_quals
    Boolean? cram
    Boolean? mmap
    Boolean? bowtie_m
    Boolean? ran_max
    Boolean? align_only
    Boolean? show_secondaries
    Boolean? keep_quals
    Boolean? bam_file
    Boolean? cram_file
    Boolean? dicer_min
    Boolean? dicer_max
    Boolean? fold_size
    Boolean? loci_file
    Boolean? locus
    Boolean? no_hp
    Boolean? pad
    Boolean? min_cov
    Boolean? strand_cut_off
    Boolean? total_primaries
  }
  command <<<
    ShortStack \
      ~{if (genome_file) then "--genomefile" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (readfile) then "--readfile" else ""} \
      ~{if (adapter) then "--adapter" else ""} \
      ~{if (bowtie_cores) then "--bowtie_cores" else ""} \
      ~{if (sort_mem) then "--sort_mem" else ""} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if (c_quals) then "--cquals" else ""} \
      ~{if (cram) then "--cram" else ""} \
      ~{if (mmap) then "--mmap" else ""} \
      ~{if (bowtie_m) then "--bowtie_m" else ""} \
      ~{if (ran_max) then "--ranmax" else ""} \
      ~{if (align_only) then "--align_only" else ""} \
      ~{if (show_secondaries) then "--show_secondaries" else ""} \
      ~{if (keep_quals) then "--keep_quals" else ""} \
      ~{if (bam_file) then "--bamfile" else ""} \
      ~{if (cram_file) then "--cramfile" else ""} \
      ~{if (dicer_min) then "--dicermin" else ""} \
      ~{if (dicer_max) then "--dicermax" else ""} \
      ~{if (fold_size) then "--foldsize" else ""} \
      ~{if (loci_file) then "--locifile" else ""} \
      ~{if (locus) then "--locus" else ""} \
      ~{if (no_hp) then "--nohp" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (min_cov) then "--mincov" else ""} \
      ~{if (strand_cut_off) then "--strand_cutoff" else ""} \
      ~{if (total_primaries) then "--total_primaries" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_file: "[string] : path to reference genome in .fasta or .fa format. Required for any run."
    outdir: "[string] : name of output directory to be created for results. Defaults to 'ShortStack_[time]',\\nwhere [time] is the current UNIX time according to the system. If the outdir already exists, ShortStack\\nwill exit with an error message."
    readfile: "[string] : path to readfile(s) to be aligned. valid formats: .fasta, .fa, .fasta.gz,\\n.fa.gz, .fastq, .fq, .fastq.gz, .fq.gz, .csfasta, .csfasta.gz. Multiple files, can be specified as\\nseparate arguments to --readfile ... e.g. --readfile file1.fastq file2.fastq file3.fastq\\nMutually exclusive with --bamfile or --cramfile."
    adapter: "[string] : sequence of 3' adapter to trim off during read-pre processing. Must be at least\\n8 bases, with only ATCG characters. If not specified, reads are assumed to be already trimmed."
    bowtie_cores: "[integer] : Argument to be passed to bowtie's -p option, specifying number of processor\\ncores to request during alignment. Defaults to 1. Must be an integer of 1 or more."
    sort_mem: "[string] : Argument to be passed to samtools sort -m option, which sets the maximum memory\\nusage during bam file sorting. If not set, samtools sort defaults it to 768M. Higher settings will\\nreduce the overall time spent in alignment phase, at cost of more memory usage. Use K/M/G suffixes to\\nspecify kilobytes, megabytes, and gigabytes, respectively. Extremely large alignment jobs will\\ncrash (due to crash of samtools sort operation) if --sort_mem is not set high enough. However, alignment\\njobs will also crash if sort_mem is set too high, and all physical memory on your machine is exahusted."
    mismatches: "[integer] : Argument to be passed to bowtie's -v option, specifying number of mismatches\\nto be tolerated in a valid alignment. Must be either 0, 1, or 2. In cases of multiple hits, only hits\\nwith lowest number of mismatches kept. Default: 1."
    c_quals: "[string] : path(s) to color-space quality value file(s). Used only in conjunction with .csfasta\\nor .csfasta.gz formatted files in --readfile. Compressed format for cquals is NOT allowed. Like --readfile,\\ncquals can take multiple arguments for multiple files, e.g. --cquals file1.qual file2.qual file3.qual"
    cram: ": When aligning, convert final alignment to cram format instead of the default bam format."
    mmap: "[string] : Protocol for handling multi-mapped reads. Valid entries are n (none), r (random), u (unique-\\nseeded guide), or f (fractional-seeded guide). default: u"
    bowtie_m: "[string] : Setting to be passed to the -m option of bowtie. Over-ridden and set to 1 if option\\nmmap is set to n. This sets the maximum number of multi-mappings allowed. Valid settings are integers >= 1 OR set 'all'\\nto disable suppression of highly multi-mapped reads. Default: 50"
    ran_max: "[string] : Reads with more than this number of possible alignment positions where the\\nchoice can't be guided by unequal  will be reported as unmapped. Irrelevant if option mmap is set\\nto n or r. Must be integer of 2 or greater or set to 'none' to disable. Default: 3."
    align_only: ": If this switch is present, the ShortStack run will terminate after the alignment phase\\nwith no analysis performed."
    show_secondaries: ": If this switch is present, the output alignment file will contain secondary alignments\\nas well as primary alignments for multi-mapped reads. Secondary alignments have bit 256 set in the SAM FLAG field.\\nThis option can increase alignment file size, sometimes by a lot."
    keep_quals: ": As of version 3.5, by default ShortStack alignments no longer store the quality values, to save space. Use\\nof this switch will cause quality values to be retained. Note that this increases file size."
    bam_file: "[string] : path to input .bam alignment file of small RNAs. Only lines with bits 4 and 256\\nunset will be used. Mutually exclusive with --readfile or --cramfile."
    cram_file: "[string] : path to input .cram alignment file of small RNAs. Only lines with bits 4 and 256\\nunset will be used. Mutually exclusive with --readfile or --bamfile."
    dicer_min: "[integer] : Minimum size of a Dicer-processed small RNA. Must be an integer of at least 15\\nand <= dicermax. Default: 20."
    dicer_max: "[integer] : Maximum size of a Dicer-processed small RNA. Must be an integer of at least 15\\nand >= dicermin. Deafult: 24."
    fold_size: "[integer] : Size of genomic RNA segments for folding during MIRNA search. Any loci larger\\nthan this size will not be analyzed with respect for MIRNA features. Must be an integer of at\\nleast 200 and no larger than 1,000. Default: 300. Note that increasing this setting may drastically\\nincrease runtimes."
    loci_file: "[string] : Path to a tab-delimited plain-text file listing intervals to analyze. Lines\\nstarting with # are ignored. First column is coordinate in format Chr:start-stop, second column\\nis names (optional), and any other columns are ignored. Mutually exclusive with option --locus."
    locus: "[string] : Analyze the specified interval(s). Interval(s) is specified in format Chr:start-stop.\\nMultiple intervals can be specified in a comma-separated list. Mutually exclusive with option\\n--locifile. Specify the value for --total_primaries to make a single locus run fast."
    no_hp: ": Disable MIRNA search."
    pad: "[integer] : Initially found clusters of small RNAs will be merged if the distance between them is\\nless than or equal to the value of pad. Must be an integer between 0 and 50000. Default: 75."
    min_cov: "[string] : Clusters of small RNAs must have at least this many alignments. Supply an\\ninteger between 1 and 50000. Can also be a normalized value in reads per million (rpm) OR reads per million mapped (rpmm). When specifying mincov in\\nrpm or rpmm, the mincov value must be a floating point number > 0 and < 500,000 followed\\nby the string 'rpm' or 'rpmm'. Examples: '5' --> threshold is 5 raw reads. '3.2rpm' --> threshold is\\n3.2 reads per million mapped. '2.8rpmm' --> threshold is 2.8 reads per million mapped. Deafult: 0.5rpm."
    strand_cut_off: "[float] : Cutoff for calling the strandedness of a locus. Must be a floating point number\\nbetween 0.5 and 1 (inclusive). DEFAULT: 0.8. At default of 0.8, a locus must have 80% of more of its\\nreads on the top strand to be called a + strand locus, or 20% or less on the top strand to be a -\\nstrand locus. All others receive no strand call (e.g. '.'). Only stranded loci are analyzed for\\nMIRNAs, while only unstranded loci are analyzed with respect to phasing. Most users probably want\\nto use the default setting of 0.8."
    total_primaries: "[integer] : Tell ShortStack the total number of primary alignments in the bam file. Specifying\\nthis value here speeds the analysis, since ShortStack does not need to count the reads directly from the bam file.\\nCan only be specified in conjunction with --bamfile. This count should include all primary alignment INCLUDING unplaced ones."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}