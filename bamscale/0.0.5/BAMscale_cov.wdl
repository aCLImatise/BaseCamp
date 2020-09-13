version 1.0

task BAMscaleCov {
  input {
    File? bed
    File? bam
    String? lib_type
    String? frag
    String? strand
    String? r_strand
    Int? seq_cov
    File? blacklist
    Int? bed_subtract
    Int? mapq
    String? keep_dup
    String? no_proper
    String? unmap_pair
    Int? min_frag
    Int? max_frag
    Int? frag_filt
    String? diff_chr
    Directory? outdir
    File? prefix
    Int? threads
  }
  command <<<
    BAMscale cov \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(lib_type) then ("--libtype " +  '"' + lib_type + '"') else ""} \
      ~{if defined(frag) then ("--frag " +  '"' + frag + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(r_strand) then ("--rstrand " +  '"' + r_strand + '"') else ""} \
      ~{if defined(seq_cov) then ("--seqcov " +  '"' + seq_cov + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(bed_subtract) then ("--bedsubtract " +  '"' + bed_subtract + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(keep_dup) then ("--keepdup " +  '"' + keep_dup + '"') else ""} \
      ~{if defined(no_proper) then ("--noproper " +  '"' + no_proper + '"') else ""} \
      ~{if defined(unmap_pair) then ("--unmappair " +  '"' + unmap_pair + '"') else ""} \
      ~{if defined(min_frag) then ("--minfrag " +  '"' + min_frag + '"') else ""} \
      ~{if defined(max_frag) then ("--maxfrag " +  '"' + max_frag + '"') else ""} \
      ~{if defined(frag_filt) then ("--fragfilt " +  '"' + frag_filt + '"') else ""} \
      ~{if defined(diff_chr) then ("--diffchr " +  '"' + diff_chr + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    bed: "Input BED file"
    bam: "Input BAM file. This can be specified multiple times in case of multiple BAM files"
    lib_type: "Sequencing type to be used. Can be: single, paired, and auto (default: autodetect)"
    frag: "Compute coverage using fragments instead of reads (default: no)"
    strand: "Reads need to have same orientation of peaks (default: unstranded)"
    r_strand: "Reads need to have reverse orientation of peaks (default: unstranded)"
    seq_cov: "Compute sequencing coverage from BAM file quickly using the index (option '0'),\\nor count number of reads by parsing entire BAM file (slower, but more accurate; set to '1' [default])"
    blacklist: "Input file with list of chromosomes to blacklist when computing coverage for normalization"
    bed_subtract: "BED file with regions to subtract when computing coverage for normalization\\nThese coordinates should not overlap so reads are not counted multiple times"
    mapq: "Minimum (at least) mapping quality (default: 0)"
    keep_dup: "Keep duplicated reads (default: no)"
    no_proper: "Do not filter un-proper alignments (default: filter)"
    unmap_pair: "Do not remove reads with unmapped pairs"
    min_frag: "Minimum fragment size for read pairs (default: 0)"
    max_frag: "Maximum fragment size for read pairs (default: 2000)"
    frag_filt: "Filter reads based on fragment size (default: no)"
    diff_chr: "Keep reads where read pair aligns to different chromosome (default: no)"
    outdir: "Output directory name (default: '.')"
    prefix: "Output prefix for file names (default: none)"
    threads: "No. of threads to use (default: 1)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}