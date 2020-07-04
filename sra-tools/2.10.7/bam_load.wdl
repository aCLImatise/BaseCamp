version 1.0

task BamLoad.2 {
  input {
    File? path_name_output
    File? path_where_fasta
    File? config
    File? header
    File? tmpfs
    File? unaligned
    Boolean? accept_dups
    Boolean? accept_no_match
    File? no_match_log
    String? qual_quant
    String? min_mapq
    String? cache_size
    Boolean? no_cs
    String? minimum_match
    Boolean? no_secondary
    Boolean? unsorted
    Boolean? sorted
    Boolean? no_verify
    Boolean? only_verify
    Boolean? use_qual
    Boolean? ref_config
    String? ref_filter
    String? edit_aligned_qual
    Boolean? keep_mismatch_qual
    String? max_rec_count
    String? max_err_count
    File? ref_file
    Boolean? ti
    String? max_warning_dup_flag
    Boolean? accept_hard_clip
    Boolean? allow_multi_map
    Boolean? make_spots_with_secondary
    Boolean? defer_secondary
    String? xml_log
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String bam_file
  }
  command <<<
    bam-load.2 \
      ~{bam_file} \
      ~{if defined(path_name_output) then ("--output " +  '"' + path_name_output + '"') else ""} \
      ~{if defined(path_where_fasta) then ("--input " +  '"' + path_where_fasta + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(tmpfs) then ("--tmpfs " +  '"' + tmpfs + '"') else ""} \
      ~{if defined(unaligned) then ("--unaligned " +  '"' + unaligned + '"') else ""} \
      ~{true="--accept-dups" false="" accept_dups} \
      ~{true="--accept-nomatch" false="" accept_no_match} \
      ~{if defined(no_match_log) then ("--nomatch-log " +  '"' + no_match_log + '"') else ""} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(cache_size) then ("--cache-size " +  '"' + cache_size + '"') else ""} \
      ~{true="--no-cs" false="" no_cs} \
      ~{if defined(minimum_match) then ("--minimum-match " +  '"' + minimum_match + '"') else ""} \
      ~{true="--no-secondary" false="" no_secondary} \
      ~{true="--unsorted" false="" unsorted} \
      ~{true="--sorted" false="" sorted} \
      ~{true="--no-verify" false="" no_verify} \
      ~{true="--only-verify" false="" only_verify} \
      ~{true="--use-QUAL" false="" use_qual} \
      ~{true="--ref-config" false="" ref_config} \
      ~{if defined(ref_filter) then ("--ref-filter " +  '"' + ref_filter + '"') else ""} \
      ~{if defined(edit_aligned_qual) then ("--edit-aligned-qual " +  '"' + edit_aligned_qual + '"') else ""} \
      ~{true="--keep-mismatch-qual" false="" keep_mismatch_qual} \
      ~{if defined(max_rec_count) then ("--max-rec-count " +  '"' + max_rec_count + '"') else ""} \
      ~{if defined(max_err_count) then ("--max-err-count " +  '"' + max_err_count + '"') else ""} \
      ~{if defined(ref_file) then ("--ref-file " +  '"' + ref_file + '"') else ""} \
      ~{true="--TI" false="" ti} \
      ~{if defined(max_warning_dup_flag) then ("--max-warning-dup-flag " +  '"' + max_warning_dup_flag + '"') else ""} \
      ~{true="--accept-hard-clip" false="" accept_hard_clip} \
      ~{true="--allow-multi-map" false="" allow_multi_map} \
      ~{true="--make-spots-with-secondary" false="" make_spots_with_secondary} \
      ~{true="--defer-secondary" false="" defer_secondary} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    path_name_output: "Path and Name of the output database. "
    path_where_fasta: "Path where to get fasta files from. "
    config: "Path to configuration file: maps the input  BAM file's reference names to the  equivalent GenBank accession. It is  tab-delimited text file with unix line  endings (\n LF) with the following fields  in this order: #1 reference name as it  occurs in the BAM file's SN field of @SQ  header record; #2 INSDC reference ID "
    header: "path to file containing the SAM header to  store in the resulting cSRA, recommended in  case of multiple input BAMs "
    tmpfs: "Path to be used for scratch files. "
    unaligned: "Specify file without aligned reads "
    accept_dups: "Accept spots inconsistent PCR duplicate  flags "
    accept_no_match: "Accept alignments with no matching bases "
    no_match_log: "Where to write info for alignments with no  matching bases "
    qual_quant: "Quality scores quantization level, can be  number (0: none, 1: 2bit, 2: 1bit), or  string like '1:10,10:20,20:30,30:-' (which  is equivalent to 1) (nb. the endpoint is  exclusive). "
    min_mapq: "Filter secondary alignments by minimum  mapping quality. "
    cache_size: "Set the cache size in MB for the temporary  indices "
    no_cs: "turn off awareness of colorspace "
    minimum_match: "minimum number of matches for an alignment "
    no_secondary: "ignore alignments marked as secondary "
    unsorted: "Tell the loader to expect unsorted input  (requires more memory) "
    sorted: "Tell the loader to require sorted input "
    no_verify: "Skip verify existence of references from  the BAM file "
    only_verify: "Exit after verifying existence of  references from the BAM file "
    use_qual: "use QUAL column for quality values (default  is to use OQ if it is available) "
    ref_config: "Only process alignments to references in  the config file "
    ref_filter: "Only process alignments to the given  reference "
    edit_aligned_qual: "Convert quality at aligned positions to  this value "
    keep_mismatch_qual: "Don't quantized quality at mismatched  positions "
    max_rec_count: "Set the maximum number of records to  process from the BAM file "
    max_err_count: "Set the maximum number of errors to ignore  from the BAM file "
    ref_file: "path to fasta file with references "
    ti: "for trace alignments "
    max_warning_dup_flag: "set limit for number of duplicate flag  mismatch warnings "
    accept_hard_clip: "accept hard clipping in CIGAR "
    allow_multi_map: "allow the same reference to be mapped to  multiple names in the input files (default  is disallow, old behaviors was to allow it) "
    make_spots_with_secondary: "use secondary alignments for constructing  spots "
    defer_secondary: "defer processing of secondary alignments  until the end of the file "
    xml_log: "produce XML-formatted log file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    bam_file: ""
  }
}