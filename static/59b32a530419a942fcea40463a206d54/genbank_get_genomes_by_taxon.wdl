version 1.0

task GenbankGetGenomesByTaxon.py {
  input {
    String? outdir
    String? tax_on
    Boolean? verbose
    Boolean? force
    Boolean? no_clobber
    String? log_file
    String? format
    String? email
    String? retries
    String? batch_size
    String? timeout
  }
  command <<<
    genbank_get_genomes_by_taxon.py \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--force" false="" force} \
      ~{true="--noclobber" false="" no_clobber} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  parameter_meta {
    outdir: "Output directory (required)"
    tax_on: "NCBI taxonomy ID"
    verbose: "Give verbose output"
    force: "Force file overwriting"
    no_clobber: "Don't nuke existing files"
    log_file: "Logfile location"
    format: "Output file format [gbk|fasta]"
    email: "Email associated with NCBI queries (required)"
    retries: "Number of Entrez retry attempts per request."
    batch_size: "Entrez record return batch size"
    timeout: "Timeout for URL connection (s)"
  }
}