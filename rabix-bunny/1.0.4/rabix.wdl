version 1.0

task Rabix {
  input {
    Directory? basedir
    Directory? configuration_dir
    String? cache_dir
    Boolean? no_container
    String? outdir
    Boolean? quiet
    File? tes_storage
    Int? tes_url
    String? tmp_outdir_prefix
    String? tmpdir_prefix
    Boolean? verbose
    String resolve_referenced_fragments
  }
  command <<<
    rabix \
      ~{resolve_referenced_fragments} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{if defined(configuration_dir) then ("--configuration-dir " +  '"' + configuration_dir + '"') else ""} \
      ~{if defined(cache_dir) then ("--cache-dir " +  '"' + cache_dir + '"') else ""} \
      ~{if (no_container) then "--no-container" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tes_storage) then ("--tes-storage " +  '"' + tes_storage + '"') else ""} \
      ~{if defined(tes_url) then ("--tes-url " +  '"' + tes_url + '"') else ""} \
      ~{if defined(tmp_outdir_prefix) then ("--tmp-outdir-prefix " +  '"' + tmp_outdir_prefix + '"') else ""} \
      ~{if defined(tmpdir_prefix) then ("--tmpdir-prefix " +  '"' + tmpdir_prefix + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    basedir: "execution directory"
    configuration_dir: "configuration directory"
    cache_dir: "basic tool result caching (experimental)"
    no_container: "don't use containers"
    outdir: "legacy compatibility parameter, doesn't do anything"
    quiet: "don't print anything except final result on standard"
    tes_storage: "path to the storage used by the ga4gh tes server\\n(currently supports locall dirs and google storage\\ncloud paths)"
    tes_url: "url of the ga4gh task execution server instance\\n(experimental)"
    tmp_outdir_prefix: "legacy compatibility parameter, doesn't do anything"
    tmpdir_prefix: "legacy compatibility parameter, doesn't do anything"
    verbose: "print more information on the standard output"
    resolve_referenced_fragments: "-r,--resolve-app               resolve all referenced fragments and print application"
  }
  output {
    File out_stdout = stdout()
  }
}