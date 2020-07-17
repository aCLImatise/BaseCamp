version 1.0

task SamDump.2.10.7 {
  input {
    Boolean? cigar_cg
    Boolean? header
    File? header_file
    Boolean? no_header
    String? header_comment
    Boolean? aligned_region
    Boolean? mate_pair_distance
    Boolean? seq_id
    Boolean? gzip
    Boolean? bzip_two
    Boolean? spot_group
    Boolean? fast_q
    Boolean? fast_a
    String? prefix
    Boolean? reverse
    Boolean? cigar_cg_merge
    Boolean? xi
    String? qual_quant
    Boolean? cg_evidence
    Boolean? cg_ev_dnb
    Boolean? cg_mappings
    Boolean? cg_sam
    Boolean? report
    File? output_file
    Int? output_buffer_size
    Boolean? cache_report
    Boolean? unaligned_spots_only
    Boolean? cg_names
    Int? cursor_cache
    String? min_mapq
    Boolean? no_mate_cache
    Boolean? rna_splicing
    String? rna_splice_level
    File? rna_splice_log
    Boolean? with_md_flag
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    sam-dump.2.10.7 \
      ~{true="--cigar-CG" false="" cigar_cg} \
      ~{true="--header" false="" header} \
      ~{if defined(header_file) then ("--header-file " +  '"' + header_file + '"') else ""} \
      ~{true="--no-header" false="" no_header} \
      ~{if defined(header_comment) then ("--header-comment " +  '"' + header_comment + '"') else ""} \
      ~{true="--aligned-region" false="" aligned_region} \
      ~{true="--matepair-distance" false="" mate_pair_distance} \
      ~{true="--seqid" false="" seq_id} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--spot-group" false="" spot_group} \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--cigar-cg-merge" false="" cigar_cg_merge} \
      ~{true="--XI" false="" xi} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{true="--CG-evidence" false="" cg_evidence} \
      ~{true="--CG_ev-dnb" false="" cg_ev_dnb} \
      ~{true="--CG-mappings" false="" cg_mappings} \
      ~{true="--CG-SAM" false="" cg_sam} \
      ~{true="--report" false="" report} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{true="--cachereport" false="" cache_report} \
      ~{true="--unaligned-spots-only" false="" unaligned_spots_only} \
      ~{true="--CG-names" false="" cg_names} \
      ~{if defined(cursor_cache) then ("--cursor-cache " +  '"' + cursor_cache + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{true="--no-mate-cache" false="" no_mate_cache} \
      ~{true="--rna-splicing" false="" rna_splicing} \
      ~{if defined(rna_splice_level) then ("--rna-splice-level " +  '"' + rna_splice_level + '"') else ""} \
      ~{if defined(rna_splice_log) then ("--rna-splice-log " +  '"' + rna_splice_log + '"') else ""} \
      ~{true="--with-md-flag" false="" with_md_flag} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    cigar_cg: "output CG version of CIGAR"
    header: "always reconstruct header"
    header_file: "take all headers from this file"
    no_header: "do not output headers"
    header_comment: "[,...] add comment to header. Use multiple times for several lines. Use quotes"
    aligned_region: "<name[:from-to]>[,...] Filter by position on genome. Name can either be file specific name (ex: \"chr1\" or \"1\"). \"from\" and \"to\" (inclusive) are 1-based coordinates"
    mate_pair_distance: "<from-to|'unknown'> Filter by distance between matepairs. Use \"unknown\" to find matepairs split between the references. Use from-to (inclusive) to limit matepair distance on the same reference"
    seq_id: "Print reference SEQ_ID in RNAME instead of NAME"
    gzip: "Compress output using gzip"
    bzip_two: "Compress output using bzip2"
    spot_group: "Add .SPOT_GROUP to QNAME"
    fast_q: "Produce FastQ formatted output"
    fast_a: "Produce Fasta formatted output"
    prefix: "Prefix QNAME: prefix.QNAME"
    reverse: "Reverse unaligned reads according to read type"
    cigar_cg_merge: "Apply CG fixups to CIGAR/SEQ/QUAL and outputs CG-specific columns"
    xi: "Output cSRA alignment id in XI column"
    qual_quant: "Quality scores quantization level string like '1:10,10:20,20:30,30:-'"
    cg_evidence: "Output CG evidence aligned to reference"
    cg_ev_dnb: "Output CG evidence DNB's aligned to evidence"
    cg_mappings: "Output CG sequences aligned to reference"
    cg_sam: "Output CG evidence DNB's aligned to reference"
    report: "report options instead of executing"
    output_file: "print output into this file (instead of STDOUT)"
    output_buffer_size: "size of output-buffer (dflt:32k, 0...off)"
    cache_report: "print report about mate-pair-cache"
    unaligned_spots_only: "output reads for spots with no aligned reads"
    cg_names: "prints cg-style spotgroup.spotid formed names"
    cursor_cache: "open cached cursor with this size"
    min_mapq: "min. mapq an alignment has to have, to be printed"
    no_mate_cache: "do not use mate-cache, slower but less memory usage"
    rna_splicing: "modify cigar-string (replace .D. with .N.) and add output flags (XS:A:+/-) when rna-splicing is detected by match to spliceosome recognition sites"
    rna_splice_level: "level of rna-splicing detection (0,1,2) when testing for spliceosome recognition sites 0=perfect match, 1=one mismatch, 2=two mismatches, one on each site"
    rna_splice_log: "file, into which rna-splice events are written"
    with_md_flag: "print MD-flag"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}