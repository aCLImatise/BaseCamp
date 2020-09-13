version 1.0

task Ncfp {
  input {
    Boolean? uniprot
    Boolean? stockholm
    Directory? cache_dir
    Int? cache_stem
    Int? batch_size
    Int? retries
    Int? limit
    File? file_stem
    Boolean? keep_cache
    File? skipped_file
    File? log_file
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
      ~{if (uniprot) then "--uniprot" else ""} \
      ~{if (stockholm) then "--stockholm" else ""} \
      ~{if defined(cache_dir) then ("--cachedir " +  '"' + cache_dir + '"') else ""} \
      ~{if defined(cache_stem) then ("--cachestem " +  '"' + cache_stem + '"') else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(file_stem) then ("--filestem " +  '"' + file_stem + '"') else ""} \
      ~{if (keep_cache) then "--keepcache" else ""} \
      ~{if defined(skipped_file) then ("--skippedfile " +  '"' + skipped_file + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (disable_t_qdm) then "--disabletqdm" else ""}
  >>>
  parameter_meta {
    uniprot: "treat input sequences as UniProt FASTA (default:\\nFalse)"
    stockholm: "parse Stockholm format sequence regions (default:\\nFalse)"
    cache_dir: "directory for cached data (default: .ncfp_cache)"
    cache_stem: "suffix for cache filestems (default:\\n2020-09-09-21-09-03)"
    batch_size: "batch size for EPost submissions (default: 100)"
    retries: "maximum number of Entrez retries (default: 10)"
    limit: "maximum number of sequences to process (for testing)\\n(default: None)"
    file_stem: "stem for output sequence files (default: ncfp)"
    keep_cache: "keep download cache (for testing) (default: False)"
    skipped_file: "path to file with skipped sequences (default:\\nskipped.fasta)"
    log_file: "path to logfile (default: None)"
    verbose: "report verbose progress (default: False)"
    disable_t_qdm: "disable progress bar (for testing) (default: False)"
    in_fname: "input sequence file"
    out_dirname: "output directory for sequence files"
    email: "email address for NCBI/Entrez"
  }
  output {
    File out_stdout = stdout()
  }
}