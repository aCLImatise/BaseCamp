version 1.0

task BAMscaleScale {
  input {
    File? bam
    String? lib_type
    String? frag
    Int? frag_size
    String? norm_type
    String? method_scale_samples
    Float? factor
    String? operation
    String? output_strandspecific_normalized
    Int? binsize
    Int? seq_cov
    File? blacklist
    Int? bed_subtract
    Int? smoothen
    Int? track_smooth
    Int? mapq
    String? keep_dup
    String? no_proper
    String? unmap_pair
    Int? min_frag
    Int? max_frag
    String? frag_filt
    String? diff_chr
    String? outdir
    Int? threads
    String var_25
    String var_26
  }
  command <<<
    BAMscale scale \
      ~{var_25} \
      ~{var_26} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(lib_type) then ("--libtype " +  '"' + lib_type + '"') else ""} \
      ~{if defined(frag) then ("--frag " +  '"' + frag + '"') else ""} \
      ~{if defined(frag_size) then ("--fragsize " +  '"' + frag_size + '"') else ""} \
      ~{if defined(norm_type) then ("--normtype " +  '"' + norm_type + '"') else ""} \
      ~{if defined(method_scale_samples) then ("--scale " +  '"' + method_scale_samples + '"') else ""} \
      ~{if defined(factor) then ("--factor " +  '"' + factor + '"') else ""} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""} \
      ~{if defined(output_strandspecific_normalized) then ("-S " +  '"' + output_strandspecific_normalized + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(seq_cov) then ("--seqcov " +  '"' + seq_cov + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(bed_subtract) then ("--bedsubtract " +  '"' + bed_subtract + '"') else ""} \
      ~{if defined(smoothen) then ("--smoothen " +  '"' + smoothen + '"') else ""} \
      ~{if defined(track_smooth) then ("--tracksmooth " +  '"' + track_smooth + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(keep_dup) then ("--keepdup " +  '"' + keep_dup + '"') else ""} \
      ~{if defined(no_proper) then ("--noproper " +  '"' + no_proper + '"') else ""} \
      ~{if defined(unmap_pair) then ("--unmappair " +  '"' + unmap_pair + '"') else ""} \
      ~{if defined(min_frag) then ("--minfrag " +  '"' + min_frag + '"') else ""} \
      ~{if defined(max_frag) then ("--maxfrag " +  '"' + max_frag + '"') else ""} \
      ~{if defined(frag_filt) then ("--fragfilt " +  '"' + frag_filt + '"') else ""} \
      ~{if defined(diff_chr) then ("--diffchr " +  '"' + diff_chr + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    bam: "Input BAM file. This has to be specified at least two times."
    lib_type: "Sequencing type to be used. Can be: single, paired, and auto (default: autodetect)"
    frag: "Compute coverage using fragments instead of reads (default: no)"
    frag_size: "Fragment size to be used to extend single-end library reads"
    norm_type: "Type of normalization. (default: base) If no normalization is needed, set '--scale no' argument, the program will disregard this option. Options:  1) reads: No. of mapped reads/fragments 2) base: Sum of per-base coverage of reads/fragments"
    method_scale_samples: "Method to scale samples together. (default: genome) Options are:  1) no: no scaling, just calculate coverage 2) smallest: scale reads to smallest library (multiple-samples only) 3) genome: scale samples to 1x genome coverage (only possible with 'base' normalization type) 4) custom: scale to custom scaling factor (--factor or -F <float> has to be supplied)"
    factor: "Scaling factor(s) when \"--scale custom\" normalization is selected. If multiple samples are specified, scaling factors should be comma (\",\") delimited. example in case of three input BAM files: 0.643,0.45667,1.3."
    operation: "Operation to perform when scaling samples. Default: scaled Options are:  1) scaled: output scaled tracks 2) unscaled: do not scale files in any way 3) log2: log2 transform against first BAM file 4) ratio: coverage ratio against first BAM file. 5) subtract: subtract coverage against first BAM file. 5) rfd: OK-seq RFD calculation 6) endseq: strand-specific coverages 7) endseqr: strand-specific coverages (reverse strand score is negative) 8) reptime: replication timing mode for two BAM files (binsize: 100bp, smoothen: 500 bins) 9) rna: coverage of RNA-seq file (one file at a time) 10) strandrna: stranded coverage of RNA-seq file (one file at a time) 11) strandrnaR: stranded coverage of RNA-seq file (reverse is negative, one file at a time) Short description of settings: endseq: generates scaled coverage tracks of positive/negative strands, and the log2 ratios endseqr: generates scaled coverage tracks of positive/negative strands, the negative strand coverage will be negative, and the log2 ratios are calculated reptime: generates scaled coverage tracks and log2 ratios of two BAM files, setting the binsize to 100bp and smoothening smoothen to 500 bins rna: coverage of RNA-seq, useful for accurate coverages at exon-intron boundaries strandrna: stranded coverage of RNA-seq, useful for accurate coverages at exon-intron boundaries, creating separate tracks for forward and reverse strand strandrnaR: stranded coverage of RNA-seq, useful for accurate coverages at exon-intron boundaries, creating separate tracks for forward and reverse strand, reverse strand is negated"
    output_strandspecific_normalized: "Output strand-specific normalized tracks. One BAM file can be specified only"
    binsize: "Size of bins for output bigWig/bedgraph generation (default: 5)"
    seq_cov: "Compute sequencing coverage from BAM file. (default: '1', count reads while parsing BAM) Options are:  1) 0: use reads in index (only if normalization is set to 'reads') 2) 1: count reads while parsing BAM(s) WARNING: this option is only useful when 'reads' are used for normalization"
    blacklist: "Input file with list of chromosomes to blacklist during scaling analysis"
    bed_subtract: "BED file with regions to subtract when computing coverage for normalization These coordinates should not overlap so reads are not counted multiple times"
    smoothen: "Smoothen signal by calculating mean of N bins flanking both sides of each bin (default: 0) If set to '0', the signal is not smoothened. To turn on specify a value greater than '0'. For replication timing, a good value is to smoothen to 100k bases. If binSize is 100bp, this would be '1000'"
    track_smooth: "Which tracks should be smoothened when performing smoothening (default: '1' meaning only binned track). Options are:  1) 0: Smoothen scaled and transformed tracks (log2, ratio or subtracted) 2) 1: Smoothen only the scaled sequencing track 3) 2: Smoothen only the transformed (log2, ratio or subtract) track"
    mapq: "Minimum (at least) mapping quality (default: 0)"
    keep_dup: "Keep duplicated reads (default: no)"
    no_proper: "Do not filter un-proper alignments (default: filter)"
    unmap_pair: "Do not remove reads with unmapped pairs"
    min_frag: "Minimum fragment size for read pairs (default: 0)"
    max_frag: "Maximum fragment size for read pairs (default: 2000)"
    frag_filt: "Filter reads based on fragment size (default: no)"
    diff_chr: "Keep reads where read pair aligns to different chromosome (default: no)"
    outdir: "Output directory name (default: '.')"
    threads: "No. of threads to use (default: 1)"
    var_25: ""
    var_26: ""
  }
}