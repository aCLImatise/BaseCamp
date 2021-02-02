version 1.0

task BAMscaleScale {
  input {
    File? bam
    String? lib_type
    String? frag
    Int? frag_size
    Int? norm_type
    Float? method_scale_samples
    Float? factor
    File? operation
    File? output_strandspecific_normalized
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
    Int? frag_filt
    String? diff_chr
    Directory? outdir
    Int? threads
    String var_25
  }
  command <<<
    BAMscale scale \
      ~{var_25} \
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
    norm_type: "Type of normalization. (default: base)\\nIf no normalization is needed, set '--scale no' argument, the program will disregard this option.\\nOptions:\\n1) reads: No. of mapped reads/fragments\\n2) base: Sum of per-base coverage of reads/fragments"
    method_scale_samples: "Method to scale samples together. (default: genome)\\nOptions are:\\n1) no: no scaling, just calculate coverage\\n2) smallest: scale reads to smallest library (multiple-samples only)\\n3) genome: scale samples to 1x genome coverage (only possible with 'base' normalization type)\\n4) custom: scale to custom scaling factor (--factor or -F <float> has to be supplied)"
    factor: "Scaling factor(s) when \\\"--scale custom\\\" normalization is selected.\\nIf multiple samples are specified, scaling factors should be comma (\\\",\\\") delimited.\\nexample in case of three input BAM files: 0.643,0.45667,1.3."
    operation: "Operation to perform when scaling samples. Default: scaled\\nOptions are:\\n1) scaled: output scaled tracks\\n2) unscaled: do not scale files in any way\\n3) log2: log2 transform against first BAM file\\n4) ratio: coverage ratio against first BAM file.\\n5) subtract: subtract coverage against first BAM file.\\n5) rfd: OK-seq RFD calculation\\n6) endseq: strand-specific coverages\\n7) endseqr: strand-specific coverages (reverse strand score is negative)\\n8) reptime: replication timing mode for two BAM files (binsize: 100bp, smoothen: 500 bins)\\n9) rna: coverage of RNA-seq file (one file at a time)\\n10) strandrna: stranded coverage of RNA-seq file (one file at a time)\\n11) strandrnaR: stranded coverage of RNA-seq file (reverse is negative, one file at a time)\\nShort description of settings:\\nendseq: generates scaled coverage tracks of positive/negative strands,\\nand the log2 ratios\\nendseqr: generates scaled coverage tracks of positive/negative strands,\\nthe negative strand coverage will be negative, and the log2 ratios are calculated\\nreptime: generates scaled coverage tracks and log2 ratios of two BAM files,\\nsetting the binsize to 100bp and smoothening smoothen to 500 bins\\nrna: coverage of RNA-seq, useful for accurate coverages at exon-intron boundaries\\nstrandrna: stranded coverage of RNA-seq, useful for accurate coverages at exon-intron boundaries,\\ncreating separate tracks for forward and reverse strand\\nstrandrnaR: stranded coverage of RNA-seq, useful for accurate coverages at exon-intron boundaries,\\ncreating separate tracks for forward and reverse strand, reverse strand is negated"
    output_strandspecific_normalized: "Output strand-specific normalized tracks. One BAM file can be specified only"
    binsize: "Size of bins for output bigWig/bedgraph generation (default: 5)"
    seq_cov: "Compute sequencing coverage from BAM file. (default: '1', count reads while parsing BAM)\\nOptions are:\\n1) 0: use reads in index (only if normalization is set to 'reads')\\n2) 1: count reads while parsing BAM(s)\\nWARNING: this option is only useful when 'reads' are used for normalization"
    blacklist: "Input file with list of chromosomes to blacklist during scaling analysis"
    bed_subtract: "BED file with regions to subtract when computing coverage for normalization\\nThese coordinates should not overlap so reads are not counted multiple times"
    smoothen: "Smoothen signal by calculating mean of N bins flanking both sides of each bin (default: 0)\\nIf set to '0', the signal is not smoothened. To turn on specify a value greater than '0'.\\nFor replication timing, a good value is to smoothen to 100k bases. If binSize is 100bp, this would be '1000'"
    track_smooth: "Which tracks should be smoothened when performing smoothening (default: '1' meaning only binned track).\\nOptions are:\\n1) 0: Smoothen scaled and transformed tracks (log2, ratio or subtracted)\\n2) 1: Smoothen only the scaled sequencing track\\n3) 2: Smoothen only the transformed (log2, ratio or subtract) track"
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
  }
  output {
    File out_stdout = stdout()
    File out_operation = "${in_operation}"
    File out_output_strandspecific_normalized = "${in_output_strandspecific_normalized}"
    Directory out_outdir = "${in_outdir}"
  }
}