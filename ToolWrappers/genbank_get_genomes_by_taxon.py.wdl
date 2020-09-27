version 1.0

task GenbankGetGenomesByTaxonpy {
  input {
    Directory? outdir
    String? tax_on
    Boolean? verbose
    Boolean? force
    Boolean? no_clobber
    File? log_file
    File? format
    String? email
    Int? retries
    Int? batch_size
    String? timeout
  }
  command <<<
    genbank_get_genomes_by_taxon_py \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_clobber) then "--noclobber" else ""} \
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
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_format = "${in_format}"
  }
}