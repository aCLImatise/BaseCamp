version 1.0

task Bamload2 {
  input {
    File? path_name_output
    File? path_where_get
    File? config
    File? header
    File? tmpfs
    File? unaligned
    Boolean? accept_dups
    File? no_match_log
    Int? qual_quant
    Int? min_mapq
    Int? cache_size
    Int? minimum_match
    Boolean? no_secondary
    Boolean? unsorted
    Boolean? sorted
    Boolean? no_verify
    Boolean? only_verify
    Boolean? use_qual
    Boolean? ref_config
    String? ref_filter
    Boolean? keep_mismatch_qual
    Int? max_err_count
    File? ref_file
    Boolean? ti
    Int? max_warning_dup_flag
    Boolean? accept_hard_clip
    Boolean? allow_multi_map
    Boolean? make_spots_with_secondary
    File? xml_log
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String flags
    String indices
    String reference
    String positions
    String spots
    String quit_dot
    File file_dot
  }
  command <<<
    bam_load_2 \
      ~{flags} \
      ~{indices} \
      ~{reference} \
      ~{positions} \
      ~{spots} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(path_name_output) then ("--output " +  '"' + path_name_output + '"') else ""} \
      ~{if defined(path_where_get) then ("--input " +  '"' + path_where_get + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(tmpfs) then ("--tmpfs " +  '"' + tmpfs + '"') else ""} \
      ~{if defined(unaligned) then ("--unaligned " +  '"' + unaligned + '"') else ""} \
      ~{if (accept_dups) then "--accept-dups" else ""} \
      ~{if defined(no_match_log) then ("--nomatch-log " +  '"' + no_match_log + '"') else ""} \
      ~{if defined(qual_quant) then ("--qual-quant " +  '"' + qual_quant + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(cache_size) then ("--cache-size " +  '"' + cache_size + '"') else ""} \
      ~{if defined(minimum_match) then ("--minimum-match " +  '"' + minimum_match + '"') else ""} \
      ~{if (no_secondary) then "--no-secondary" else ""} \
      ~{if (unsorted) then "--unsorted" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if (no_verify) then "--no-verify" else ""} \
      ~{if (only_verify) then "--only-verify" else ""} \
      ~{if (use_qual) then "--use-QUAL" else ""} \
      ~{if (ref_config) then "--ref-config" else ""} \
      ~{if defined(ref_filter) then ("--ref-filter " +  '"' + ref_filter + '"') else ""} \
      ~{if (keep_mismatch_qual) then "--keep-mismatch-qual" else ""} \
      ~{if defined(max_err_count) then ("--max-err-count " +  '"' + max_err_count + '"') else ""} \
      ~{if defined(ref_file) then ("--ref-file " +  '"' + ref_file + '"') else ""} \
      ~{if (ti) then "--TI" else ""} \
      ~{if defined(max_warning_dup_flag) then ("--max-warning-dup-flag " +  '"' + max_warning_dup_flag + '"') else ""} \
      ~{if (accept_hard_clip) then "--accept-hard-clip" else ""} \
      ~{if (allow_multi_map) then "--allow-multi-map" else ""} \
      ~{if (make_spots_with_secondary) then "--make-spots-with-secondary" else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    path_name_output: "Path and Name of the output database."
    path_where_get: "Path where to get fasta files from."
    config: "Path to configuration file: maps the input\\nBAM file's reference names to the\\nequivalent GenBank accession. It is\\ntab-delimited text file with unix line\\nendings (\\n LF) with the following fields\\nin this order: #1 reference name as it\\noccurs in the BAM file's SN field of @SQ\\nheader record; #2 INSDC reference ID"
    header: "path to file containing the SAM header to\\nstore in the resulting cSRA, recommended in\\ncase of multiple input BAMs"
    tmpfs: "Path to be used for scratch files."
    unaligned: "Specify file without aligned reads"
    accept_dups: "Accept spots inconsistent PCR duplicate"
    no_match_log: "Where to write info for alignments with no\\nmatching bases"
    qual_quant: "Quality scores quantization level, can be\\nnumber (0: none, 1: 2bit, 2: 1bit), or\\nstring like '1:10,10:20,20:30,30:-' (which\\nis equivalent to 1) (nb. the endpoint is\\nexclusive)."
    min_mapq: "Filter secondary alignments by minimum\\nmapping quality."
    cache_size: "Set the cache size in MB for the temporary"
    minimum_match: "minimum number of matches for an alignment"
    no_secondary: "ignore alignments marked as secondary"
    unsorted: "Tell the loader to expect unsorted input\\n(requires more memory)"
    sorted: "Tell the loader to require sorted input"
    no_verify: "Skip verify existence of references from\\nthe BAM file"
    only_verify: "Exit after verifying existence of\\nreferences from the BAM file"
    use_qual: "use QUAL column for quality values (default\\nis to use OQ if it is available)"
    ref_config: "Only process alignments to references in\\nthe config file"
    ref_filter: "Only process alignments to the given"
    keep_mismatch_qual: "Don't quantized quality at mismatched"
    max_err_count: "Set the maximum number of errors to ignore\\nfrom the BAM file"
    ref_file: "path to fasta file with references"
    ti: "for trace alignments"
    max_warning_dup_flag: "set limit for number of duplicate flag\\nmismatch warnings"
    accept_hard_clip: "accept hard clipping in CIGAR"
    allow_multi_map: "allow the same reference to be mapped to\\nmultiple names in the input files (default\\nis disallow, old behaviors was to allow it)"
    make_spots_with_secondary: "use secondary alignments for constructing"
    xml_log: "produce XML-formatted log file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    flags: "--accept-nomatch                 Accept alignments with no matching bases "
    indices: "--no-cs                          turn off awareness of colorspace "
    reference: "--edit-aligned-qual <new-value>  Convert quality at aligned positions to "
    positions: "--max-rec-count <number>         Set the maximum number of records to "
    spots: "--defer-secondary                defer processing of secondary alignments "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "bam-load.2 : 2.10.9"
  }
  output {
    File out_stdout = stdout()
    File out_path_name_output = "${in_path_name_output}"
  }
}