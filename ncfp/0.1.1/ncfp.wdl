version 1.0

task Ncfp {
  input {
    Boolean? uniprot
    Boolean? stockholm
    String? cache_dir
    String? cache_stem
    String? batch_size
    String? retries
    String? limit
    File? file_stem
    Boolean? keep_cache
    String? skipped_file
    String? log_file
    Boolean? verbose
    Boolean? disable_t_qdm
    String in_fname
    String out_dirname
    String email
  }
  command <<<
    ncfp \
      ~{in_fname} \
      ~{out_dirname} \
      ~{email} \
      ~{true="--uniprot" false="" uniprot} \
      ~{true="--stockholm" false="" stockholm} \
      ~{if defined(cache_dir) then ("--cachedir " +  '"' + cache_dir + '"') else ""} \
      ~{if defined(cache_stem) then ("--cachestem " +  '"' + cache_stem + '"') else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(file_stem) then ("--filestem " +  '"' + file_stem + '"') else ""} \
      ~{true="--keepcache" false="" keep_cache} \
      ~{if defined(skipped_file) then ("--skippedfile " +  '"' + skipped_file + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--disabletqdm" false="" disable_t_qdm}
  >>>
  parameter_meta {
    uniprot: "treat input sequences as UniProt FASTA (default: False)"
    stockholm: "parse Stockholm format sequence regions (default: False)"
    cache_dir: "directory for cached data (default: .ncfp_cache)"
    cache_stem: "suffix for cache filestems (default: 2020-06-19-02-06-45)"
    batch_size: "batch size for EPost submissions (default: 100)"
    retries: "maximum number of Entrez retries (default: 10)"
    limit: "maximum number of sequences to process (for testing) (default: None)"
    file_stem: "stem for output sequence files (default: ncfp)"
    keep_cache: "keep download cache (for testing) (default: False)"
    skipped_file: "path to file with skipped sequences (default: skipped.fasta)"
    log_file: "path to logfile (default: None)"
    verbose: "report verbose progress (default: False)"
    disable_t_qdm: "disable progress bar (for testing) (default: False)"
    in_fname: "input sequence file"
    out_dirname: "output directory for sequence files"
    email: "email address for NCBI/Entrez"
  }
}