version 1.0

task Rabix {
  input {
    String? basedir
    String? configuration_dir
    String? cache_dir
    Boolean? no_container
    String? outdir
    Boolean? quiet
    Boolean? resolve_app
    String? tes_storage
    String? tes_url
    String? tmp_outdir_prefix
    String? tmpdir_prefix
    Boolean? verbose
  }
  command <<<
    rabix \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{if defined(configuration_dir) then ("--configuration-dir " +  '"' + configuration_dir + '"') else ""} \
      ~{if defined(cache_dir) then ("--cache-dir " +  '"' + cache_dir + '"') else ""} \
      ~{true="--no-container" false="" no_container} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--resolve-app" false="" resolve_app} \
      ~{if defined(tes_storage) then ("--tes-storage " +  '"' + tes_storage + '"') else ""} \
      ~{if defined(tes_url) then ("--tes-url " +  '"' + tes_url + '"') else ""} \
      ~{if defined(tmp_outdir_prefix) then ("--tmp-outdir-prefix " +  '"' + tmp_outdir_prefix + '"') else ""} \
      ~{if defined(tmpdir_prefix) then ("--tmpdir-prefix " +  '"' + tmpdir_prefix + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    basedir: "execution directory"
    configuration_dir: "configuration directory"
    cache_dir: "basic tool result caching (experimental)"
    no_container: "don't use containers"
    outdir: "legacy compatibility parameter, doesn't do anything"
    quiet: "don't print anything except final result on standard output"
    resolve_app: "resolve all referenced fragments and print application as a single JSON document"
    tes_storage: "path to the storage used by the ga4gh tes server (currently supports locall dirs and google storage cloud paths)"
    tes_url: "url of the ga4gh task execution server instance (experimental)"
    tmp_outdir_prefix: "legacy compatibility parameter, doesn't do anything"
    tmpdir_prefix: "legacy compatibility parameter, doesn't do anything"
    verbose: "print more information on the standard output"
  }
}