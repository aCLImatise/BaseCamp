class: CommandLineTool
id: BAMscale_scale.cwl
inputs:
- id: in_bam
  doc: Input BAM file. This has to be specified at least two times.
  type: File
  inputBinding:
    prefix: --bam
- id: in_lib_type
  doc: 'Sequencing type to be used. Can be: single, paired, and auto (default: autodetect)'
  type: string
  inputBinding:
    prefix: --libtype
- id: in_frag
  doc: 'Compute coverage using fragments instead of reads (default: no)'
  type: string
  inputBinding:
    prefix: --frag
- id: in_frag_size
  doc: Fragment size to be used to extend single-end library reads
  type: long
  inputBinding:
    prefix: --fragsize
- id: in_norm_type
  doc: "Type of normalization. (default: base)\nIf no normalization is needed, set\
    \ '--scale no' argument, the program will disregard this option.\nOptions:\n1)\
    \ reads: No. of mapped reads/fragments\n2) base: Sum of per-base coverage of reads/fragments"
  type: long
  inputBinding:
    prefix: --normtype
- id: in_method_scale_samples
  doc: "Method to scale samples together. (default: genome)\nOptions are:\n1) no:\
    \ no scaling, just calculate coverage\n2) smallest: scale reads to smallest library\
    \ (multiple-samples only)\n3) genome: scale samples to 1x genome coverage (only\
    \ possible with 'base' normalization type)\n4) custom: scale to custom scaling\
    \ factor (--factor or -F <float> has to be supplied)"
  type: double
  inputBinding:
    prefix: --scale
- id: in_factor
  doc: "Scaling factor(s) when \"--scale custom\" normalization is selected.\nIf multiple\
    \ samples are specified, scaling factors should be comma (\",\") delimited.\n\
    example in case of three input BAM files: 0.643,0.45667,1.3."
  type: double
  inputBinding:
    prefix: --factor
- id: in_operation
  doc: "Operation to perform when scaling samples. Default: scaled\nOptions are:\n\
    1) scaled: output scaled tracks\n2) unscaled: do not scale files in any way\n\
    3) log2: log2 transform against first BAM file\n4) ratio: coverage ratio against\
    \ first BAM file.\n5) subtract: subtract coverage against first BAM file.\n5)\
    \ rfd: OK-seq RFD calculation\n6) endseq: strand-specific coverages\n7) endseqr:\
    \ strand-specific coverages (reverse strand score is negative)\n8) reptime: replication\
    \ timing mode for two BAM files (binsize: 100bp, smoothen: 500 bins)\n9) rna:\
    \ coverage of RNA-seq file (one file at a time)\n10) strandrna: stranded coverage\
    \ of RNA-seq file (one file at a time)\n11) strandrnaR: stranded coverage of RNA-seq\
    \ file (reverse is negative, one file at a time)\nShort description of settings:\n\
    endseq: generates scaled coverage tracks of positive/negative strands,\nand the\
    \ log2 ratios\nendseqr: generates scaled coverage tracks of positive/negative\
    \ strands,\nthe negative strand coverage will be negative, and the log2 ratios\
    \ are calculated\nreptime: generates scaled coverage tracks and log2 ratios of\
    \ two BAM files,\nsetting the binsize to 100bp and smoothening smoothen to 500\
    \ bins\nrna: coverage of RNA-seq, useful for accurate coverages at exon-intron\
    \ boundaries\nstrandrna: stranded coverage of RNA-seq, useful for accurate coverages\
    \ at exon-intron boundaries,\ncreating separate tracks for forward and reverse\
    \ strand\nstrandrnaR: stranded coverage of RNA-seq, useful for accurate coverages\
    \ at exon-intron boundaries,\ncreating separate tracks for forward and reverse\
    \ strand, reverse strand is negated"
  type: File
  inputBinding:
    prefix: --operation
- id: in_output_strandspecific_normalized
  doc: Output strand-specific normalized tracks. One BAM file can be specified only
  type: File
  inputBinding:
    prefix: -S
- id: in_binsize
  doc: 'Size of bins for output bigWig/bedgraph generation (default: 5)'
  type: long
  inputBinding:
    prefix: --binsize
- id: in_seq_cov
  doc: "Compute sequencing coverage from BAM file. (default: '1', count reads while\
    \ parsing BAM)\nOptions are:\n1) 0: use reads in index (only if normalization\
    \ is set to 'reads')\n2) 1: count reads while parsing BAM(s)\nWARNING: this option\
    \ is only useful when 'reads' are used for normalization"
  type: long
  inputBinding:
    prefix: --seqcov
- id: in_blacklist
  doc: Input file with list of chromosomes to blacklist during scaling analysis
  type: File
  inputBinding:
    prefix: --blacklist
- id: in_bed_subtract
  doc: "BED file with regions to subtract when computing coverage for normalization\n\
    These coordinates should not overlap so reads are not counted multiple times"
  type: long
  inputBinding:
    prefix: --bedsubtract
- id: in_smoothen
  doc: "Smoothen signal by calculating mean of N bins flanking both sides of each\
    \ bin (default: 0)\nIf set to '0', the signal is not smoothened. To turn on specify\
    \ a value greater than '0'.\nFor replication timing, a good value is to smoothen\
    \ to 100k bases. If binSize is 100bp, this would be '1000'"
  type: long
  inputBinding:
    prefix: --smoothen
- id: in_track_smooth
  doc: "Which tracks should be smoothened when performing smoothening (default: '1'\
    \ meaning only binned track).\nOptions are:\n1) 0: Smoothen scaled and transformed\
    \ tracks (log2, ratio or subtracted)\n2) 1: Smoothen only the scaled sequencing\
    \ track\n3) 2: Smoothen only the transformed (log2, ratio or subtract) track"
  type: long
  inputBinding:
    prefix: --tracksmooth
- id: in_mapq
  doc: 'Minimum (at least) mapping quality (default: 0)'
  type: long
  inputBinding:
    prefix: --mapq
- id: in_keep_dup
  doc: 'Keep duplicated reads (default: no)'
  type: string
  inputBinding:
    prefix: --keepdup
- id: in_no_proper
  doc: 'Do not filter un-proper alignments (default: filter)'
  type: string
  inputBinding:
    prefix: --noproper
- id: in_unmap_pair
  doc: Do not remove reads with unmapped pairs
  type: string
  inputBinding:
    prefix: --unmappair
- id: in_min_frag
  doc: 'Minimum fragment size for read pairs (default: 0)'
  type: long
  inputBinding:
    prefix: --minfrag
- id: in_max_frag
  doc: 'Maximum fragment size for read pairs (default: 2000)'
  type: long
  inputBinding:
    prefix: --maxfrag
- id: in_frag_filt
  doc: 'Filter reads based on fragment size (default: no)'
  type: long
  inputBinding:
    prefix: --fragfilt
- id: in_diff_chr
  doc: 'Keep reads where read pair aligns to different chromosome (default: no)'
  type: string
  inputBinding:
    prefix: --diffchr
- id: in_outdir
  doc: "Output directory name (default: '.')"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_threads
  doc: 'No. of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_var_25
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_operation
  doc: "Operation to perform when scaling samples. Default: scaled\nOptions are:\n\
    1) scaled: output scaled tracks\n2) unscaled: do not scale files in any way\n\
    3) log2: log2 transform against first BAM file\n4) ratio: coverage ratio against\
    \ first BAM file.\n5) subtract: subtract coverage against first BAM file.\n5)\
    \ rfd: OK-seq RFD calculation\n6) endseq: strand-specific coverages\n7) endseqr:\
    \ strand-specific coverages (reverse strand score is negative)\n8) reptime: replication\
    \ timing mode for two BAM files (binsize: 100bp, smoothen: 500 bins)\n9) rna:\
    \ coverage of RNA-seq file (one file at a time)\n10) strandrna: stranded coverage\
    \ of RNA-seq file (one file at a time)\n11) strandrnaR: stranded coverage of RNA-seq\
    \ file (reverse is negative, one file at a time)\nShort description of settings:\n\
    endseq: generates scaled coverage tracks of positive/negative strands,\nand the\
    \ log2 ratios\nendseqr: generates scaled coverage tracks of positive/negative\
    \ strands,\nthe negative strand coverage will be negative, and the log2 ratios\
    \ are calculated\nreptime: generates scaled coverage tracks and log2 ratios of\
    \ two BAM files,\nsetting the binsize to 100bp and smoothening smoothen to 500\
    \ bins\nrna: coverage of RNA-seq, useful for accurate coverages at exon-intron\
    \ boundaries\nstrandrna: stranded coverage of RNA-seq, useful for accurate coverages\
    \ at exon-intron boundaries,\ncreating separate tracks for forward and reverse\
    \ strand\nstrandrnaR: stranded coverage of RNA-seq, useful for accurate coverages\
    \ at exon-intron boundaries,\ncreating separate tracks for forward and reverse\
    \ strand, reverse strand is negated"
  type: File
  outputBinding:
    glob: $(inputs.in_operation)
- id: out_output_strandspecific_normalized
  doc: Output strand-specific normalized tracks. One BAM file can be specified only
  type: File
  outputBinding:
    glob: $(inputs.in_output_strandspecific_normalized)
- id: out_outdir
  doc: "Output directory name (default: '.')"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- BAMscale
- scale
