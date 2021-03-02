version 1.0

task Samdumporig2108 {
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
    Boolean? gzip
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
    Boolean? cg_mappings
    Boolean? cg_sam
    File? output_file
    Boolean? output_buffer_size
    Boolean? cache_report
    Boolean? unaligned_spots_only
    Boolean? cg_names
    Boolean? min_mapq
    Boolean? rna_splicing
    Boolean? rna_splice_level
    Boolean? rna_splice_log
    Boolean? with_md_flag
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String reads
    String name
    String type
    String reference
    String names
    String printed
    String written
    String quit_dot
    File file_dot
  }
  command <<<
    sam_dump_orig_2_10_8 \
      ~{reads} \
      ~{name} \
      ~{type} \
      ~{reference} \
      ~{names} \
      ~{printed} \
      ~{written} \
      ~{quit_dot} \
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
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (spot_group) then "--spot-group" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (xi) then "--XI" else ""} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{if (cg_evidence) then "--CG-evidence" else ""} \
      ~{if (cg_ev_dnb) then "--CG-ev-dnb" else ""} \
      ~{if (cg_mappings) then "--CG-mappings" else ""} \
      ~{if (cg_sam) then "--CG-SAM" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (output_buffer_size) then "--output-buffer-size" else ""} \
      ~{if (cache_report) then "--cachereport" else ""} \
      ~{if (unaligned_spots_only) then "--unaligned-spots-only" else ""} \
      ~{if (cg_names) then "--CG-names" else ""} \
      ~{if (min_mapq) then "--min-mapq" else ""} \
      ~{if (rna_splicing) then "--rna-splicing" else ""} \
      ~{if (rna_splice_level) then "--rna-splice-level" else ""} \
      ~{if (rna_splice_log) then "--rna-splice-log" else ""} \
      ~{if (with_md_flag) then "--with-md-flag" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unaligned: "Output unaligned reads along with aligned"
    cigar_long: "Output long version of CIGAR"
    cigar_cg: "Output CG version of CIGAR"
    header: "Always reconstruct header"
    header_file: "take all headers from this file"
    no_header: "Do not output headers"
    header_comment: "Add comment to header. Use multiple times\\nfor several lines. Use quotes"
    aligned_region: "<name[:from-to]>  Filter by position on genome. Name can\\neither be file specific name (ex: \\\"chr1\\\" or\\n\\\"1\\\"). \\\"from\\\" and \\\"to\\\" (inclusive) are\\n1-based coordinates"
    mate_pair_distance: "<from-to|'unknown'>  Filter by distance between\\nmatepairs. Use \\\"unknown\\\" to find matepairs\\nsplit between the references. Use from-to\\n(inclusive) to limit matepair distance on\\nthe same reference"
    seq_id: "Print reference SEQ_ID in RNAME instead of"
    gzip: "Compress output using gzip"
    bzip_two: "Compress output using bzip2"
    spot_group: "Add .SPOT_GROUP to QNAME"
    fast_q: "Produce FastQ formatted output"
    fast_a: "Produce Fasta formatted output"
    prefix: "Prefix QNAME: prefix.QNAME"
    reverse: "Reverse unaligned reads according to read"
    xi: "Output cSRA alignment id in XI column"
    qual_quant: "Quality scores quantization level\\nstring like '1:10,10:20,20:30,30:-'"
    cg_evidence: "Output CG evidence aligned to reference"
    cg_ev_dnb: "Output CG evidence DNB's aligned to evidence"
    cg_mappings: "Output CG sequences aligned to reference"
    cg_sam: "Output CG evidence DNB's aligned to"
    output_file: "print output into this file (instead of\\nSTDOUT)"
    output_buffer_size: "size of output-buffer(dflt:32k, 0...off)"
    cache_report: "print report about mate-pair-cache"
    unaligned_spots_only: "output reads for spots with no aligned reads"
    cg_names: "prints cg-style spotgroup.spotid formed"
    min_mapq: "min. mapq an alignment has to have, to be"
    rna_splicing: "modify cigar-string (replace .D. with .N.)\\nand add output flags (XS:A:+/-)  when\\nrna-splicing is detected by match to\\nspliceosome recognition sites"
    rna_splice_level: "level of rna-splicing detection (0,1,2) when\\ntesting for spliceosome recognition sites\\n0=perfect match, 1=one mismatch, 2=two\\nmismatches  one on each site"
    rna_splice_log: "file, into which rna-splice events are"
    with_md_flag: "print MD-flag"
    ngc: "PATH to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    reads: "-1|--primary                     Output only primary alignments "
    name: "-=|--hide-identical              Output '=' if base is identical to reference "
    type: "--cigar-CG-merge                 Apply CG fixups to CIGAR/SEQ/QUAL and "
    reference: "--report                         report options instead of executing "
    names: "--cursor-cache                   open cached cursor with this size "
    printed: "--no-mate-cache                  do not use mate-cache, slower but less "
    written: "--disable-multithreading         disable multithreading "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "sam-dump-orig.2.10.8 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}