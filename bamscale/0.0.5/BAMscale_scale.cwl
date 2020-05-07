class: CommandLineTool
id: BAMscale_scale.cwl
inputs:
- id: bam
  doc: Input BAM file. This has to be specified at least two times.
  type: File
  inputBinding:
    prefix: --bam
- id: lib_type
  doc: 'Sequencing type to be used. Can be: single, paired, and auto (default: autodetect)'
  type: string
  inputBinding:
    prefix: --libtype
- id: frag
  doc: 'Compute coverage using fragments instead of reads (default: no)'
  type: string
  inputBinding:
    prefix: --frag
- id: frag_size
  doc: Fragment size to be used to extend single-end library reads
  type: long
  inputBinding:
    prefix: --fragsize
- id: norm_type
  doc: "Type of normalization. (default: base) If no normalization is needed, set\
    \ '--scale no' argument, the program will disregard this option. Options:  1)\
    \ reads: No. of mapped reads/fragments 2) base: Sum of per-base coverage of reads/fragments"
  type: string
  inputBinding:
    prefix: --normtype
- id: scale
  doc: "Method to scale samples together. (default: genome) Options are:  1) no: no\
    \ scaling, just calculate coverage 2) smallest: scale reads to smallest library\
    \ (multiple-samples only) 3) genome: scale samples to 1x genome coverage (only\
    \ possible with 'base' normalization type) 4) custom: scale to custom scaling\
    \ factor (--factor or -F <float> has to be supplied)"
  type: string
  inputBinding:
    prefix: --scale
- id: factor
  doc: 'Scaling factor(s) when "--scale custom" normalization is selected. If multiple
    samples are specified, scaling factors should be comma (",") delimited. example
    in case of three input BAM files: 0.643,0.45667,1.3.'
  type: double
  inputBinding:
    prefix: --factor
- id: operation
  doc: 'Operation to perform when scaling samples. Default: scaled Options are:  1)
    scaled: output scaled tracks 2) unscaled: do not scale files in any way 3) log2:
    log2 transform against first BAM file 4) ratio: coverage ratio against first BAM
    file. 5) subtract: subtract coverage against first BAM file. 5) rfd: OK-seq RFD
    calculation 6) endseq: strand-specific coverages 7) endseqr: strand-specific coverages
    (reverse strand score is negative) 8) reptime: replication timing mode for two
    BAM files (binsize: 100bp, smoothen: 500 bins) 9) rna: coverage of RNA-seq file
    (one file at a time) 10) strandrna: stranded coverage of RNA-seq file (one file
    at a time) 11) strandrnaR: stranded coverage of RNA-seq file (reverse is negative,
    one file at a time) Short description of settings: endseq: generates scaled coverage
    tracks of positive/negative strands, and the log2 ratios endseqr: generates scaled
    coverage tracks of positive/negative strands, the negative strand coverage will
    be negative, and the log2 ratios are calculated reptime: generates scaled coverage
    tracks and log2 ratios of two BAM files, setting the binsize to 100bp and smoothening
    smoothen to 500 bins rna: coverage of RNA-seq, useful for accurate coverages at
    exon-intron boundaries strandrna: stranded coverage of RNA-seq, useful for accurate
    coverages at exon-intron boundaries, creating separate tracks for forward and
    reverse strand strandrnaR: stranded coverage of RNA-seq, useful for accurate coverages
    at exon-intron boundaries, creating separate tracks for forward and reverse strand,
    reverse strand is negated'
  type: string
  inputBinding:
    prefix: --operation
- id: s
  doc: Output strand-specific normalized tracks. One BAM file can be specified only
  type: string
  inputBinding:
    prefix: -S
- id: binsize
  doc: 'Size of bins for output bigWig/bedgraph generation (default: 5)'
  type: long
  inputBinding:
    prefix: --binsize
- id: seq_cov
  doc: "Compute sequencing coverage from BAM file. (default: '1', count reads while\
    \ parsing BAM) Options are:  1) 0: use reads in index (only if normalization is\
    \ set to 'reads') 2) 1: count reads while parsing BAM(s) WARNING: this option\
    \ is only useful when 'reads' are used for normalization"
  type: long
  inputBinding:
    prefix: --seqcov
- id: blacklist
  doc: Input file with list of chromosomes to blacklist during scaling analysis
  type: File
  inputBinding:
    prefix: --blacklist
- id: bed_subtract
  doc: BED file with regions to subtract when computing coverage for normalization
    These coordinates should not overlap so reads are not counted multiple times
  type: long
  inputBinding:
    prefix: --bedsubtract
- id: smoothen
  doc: "Smoothen signal by calculating mean of N bins flanking both sides of each\
    \ bin (default: 0) If set to '0', the signal is not smoothened. To turn on specify\
    \ a value greater than '0'. For replication timing, a good value is to smoothen\
    \ to 100k bases. If binSize is 100bp, this would be '1000'"
  type: long
  inputBinding:
    prefix: --smoothen
- id: track_smooth
  doc: "Which tracks should be smoothened when performing smoothening (default: '1'\
    \ meaning only binned track). Options are:  1) 0: Smoothen scaled and transformed\
    \ tracks (log2, ratio or subtracted) 2) 1: Smoothen only the scaled sequencing\
    \ track 3) 2: Smoothen only the transformed (log2, ratio or subtract) track"
  type: long
  inputBinding:
    prefix: --tracksmooth
- id: mapq
  doc: 'Minimum (at least) mapping quality (default: 0)'
  type: long
  inputBinding:
    prefix: --mapq
- id: keep_dup
  doc: 'Keep duplicated reads (default: no)'
  type: string
  inputBinding:
    prefix: --keepdup
- id: no_proper
  doc: 'Do not filter un-proper alignments (default: filter)'
  type: string
  inputBinding:
    prefix: --noproper
- id: unmap_pair
  doc: Do not remove reads with unmapped pairs
  type: string
  inputBinding:
    prefix: --unmappair
- id: min_frag
  doc: 'Minimum fragment size for read pairs (default: 0)'
  type: long
  inputBinding:
    prefix: --minfrag
- id: max_frag
  doc: 'Maximum fragment size for read pairs (default: 2000)'
  type: long
  inputBinding:
    prefix: --maxfrag
- id: frag_filt
  doc: 'Filter reads based on fragment size (default: no)'
  type: string
  inputBinding:
    prefix: --fragfilt
- id: diff_chr
  doc: 'Keep reads where read pair aligns to different chromosome (default: no)'
  type: string
  inputBinding:
    prefix: --diffchr
- id: outdir
  doc: "Output directory name (default: '.')"
  type: string
  inputBinding:
    prefix: --outdir
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- BAMscale
- scale
