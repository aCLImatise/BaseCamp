version 1.0

task Samdump2108 {
  input {
    Boolean? unaligned
    Boolean? cigar_long
    Boolean? cigar_cg
    Boolean? header
    File? header_file
    Boolean? no_header
    String? header_comment
    Boolean? aligned_region
    Boolean? mate_pair_distance
    Boolean? seq_id
    Boolean? bzip_two
    Boolean? spot_group
    Boolean? fast_q
    Boolean? fast_a
    String? prefix
    Boolean? reverse
    Boolean? xi
    String? qual_quant
    Boolean? cg_evidence
    Boolean? cg_ev_dnb
    Boolean? cg_sam
    File? output_file
    Int? output_buffer_size
    Boolean? cache_report
    Boolean? unaligned_spots_only
    Int? min_mapq
    Boolean? rna_splicing
    Int? rna_splice_level
    File? rna_splice_log
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    Int? log_level
    File? option_file
    String __primary
    String name
    String _gzip_output
    String type
    String evidence
    String _report_options
    String _cgnames_prints
    String names
    String printed
    String written
    File file_dot
  }
  command <<<
    sam_dump_2_10_8 \
      ~{__primary} \
      ~{name} \
      ~{_gzip_output} \
      ~{type} \
      ~{evidence} \
      ~{_report_options} \
      ~{_cgnames_prints} \
      ~{names} \
      ~{printed} \
      ~{written} \
      ~{file_dot} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if (cigar_long) then "--cigar-long" else ""} \
      ~{if (cigar_cg) then "--cigar-CG" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(header_file) then ("--header-file " +  '"' + header_file + '"') else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(header_comment) then ("--header-comment " +  '"' + header_comment + '"') else ""} \
      ~{if (aligned_region) then "--aligned-region" else ""} \
      ~{if (mate_pair_distance) then "--matepair-distance" else ""} \
      ~{if (seq_id) then "--seqid" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (spot_group) then "--spot-group" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (xi) then "--XI" else ""} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{if (cg_evidence) then "--CG-evidence" else ""} \
      ~{if (cg_ev_dnb) then "--CG_ev-dnb" else ""} \
      ~{if (cg_sam) then "--CG-SAM" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{if (cache_report) then "--cachereport" else ""} \
      ~{if (unaligned_spots_only) then "--unaligned-spots-only" else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if (rna_splicing) then "--rna-splicing" else ""} \
      ~{if defined(rna_splice_level) then ("--rna-splice-level " +  '"' + rna_splice_level + '"') else ""} \
      ~{if defined(rna_splice_log) then ("--rna-splice-log " +  '"' + rna_splice_log + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    unaligned: "output unaligned reads along with aligned"
    cigar_long: "output long version of CIGAR"
    cigar_cg: "output CG version of CIGAR"
    header: "always reconstruct header"
    header_file: "take all headers from this file"
    no_header: "do not output headers"
    header_comment: "[,...] add comment to header. Use multiple times\\nfor several lines. Use quotes"
    aligned_region: "<name[:from-to]>[,...]\\nFilter by position on genome. Name can\\neither be file specific name (ex: \\\"chr1\\\"\\nor \\\"1\\\"). \\\"from\\\" and \\\"to\\\" (inclusive) are\\n1-based coordinates"
    mate_pair_distance: "<from-to|'unknown'>\\nFilter by distance between matepairs. Use\\n\\\"unknown\\\" to find matepairs split\\nbetween the references. Use from-to\\n(inclusive) to limit matepair distance\\non the same reference"
    seq_id: "Print reference SEQ_ID in RNAME instead of"
    bzip_two: "Compress output using bzip2"
    spot_group: "Add .SPOT_GROUP to QNAME"
    fast_q: "Produce FastQ formatted output"
    fast_a: "Produce Fasta formatted output"
    prefix: "Prefix QNAME: prefix.QNAME"
    reverse: "Reverse unaligned reads according to read"
    xi: "Output cSRA alignment id in XI column"
    qual_quant: "Quality scores quantization level string\\nlike '1:10,10:20,20:30,30:-'"
    cg_evidence: "Output CG evidence aligned to reference"
    cg_ev_dnb: "Output CG evidence DNB's aligned to"
    cg_sam: "Output CG evidence DNB's aligned to"
    output_file: "print output into this file (instead of\\nSTDOUT)"
    output_buffer_size: "size of output-buffer (dflt:32k, 0...off)"
    cache_report: "print report about mate-pair-cache"
    unaligned_spots_only: "output reads for spots with no aligned"
    min_mapq: "min. mapq an alignment has to have, to be"
    rna_splicing: "modify cigar-string (replace .D. with .N.)\\nand add output flags (XS:A:+/-) when\\nrna-splicing is detected by match to\\nspliceosome recognition sites"
    rna_splice_level: "level of rna-splicing detection (0,1,2)\\nwhen testing for spliceosome recognition\\nsites 0=perfect match, 1=one mismatch,\\n2=two mismatches, one on each site"
    rna_splice_log: "file, into which rna-splice events are"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    __primary: "-1|--primary                     output only primary alignments"
    name: "-=|--hide-identical              Output '=' if base is identical to"
    _gzip_output: "--gzip                        Compress output using gzip"
    type: "--cigar-cg-merge              Apply CG fixups to CIGAR/SEQ/QUAL and"
    evidence: "--CG-mappings                 Output CG sequences aligned to reference"
    _report_options: "--report                      report options instead of executing"
    _cgnames_prints: "--CG-names                    prints cg-style spotgroup.spotid formed"
    names: "--cursor-cache <size>         open cached cursor with this size"
    printed: "--no-mate-cache               do not use mate-cache, slower but less"
    written: "--with-md-flag                print MD-flag"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}