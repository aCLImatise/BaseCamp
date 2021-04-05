version 1.0

task NfcoreDownload {
  input {
    String? release
    Directory? outdir
    Boolean? compress
    Boolean? force
    Boolean? singularity
    Directory? singularity_cache
    Int? parallel_downloads
    String pipeline_name
  }
  command <<<
    nf_core download \
      ~{pipeline_name} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (singularity) then "--singularity" else ""} \
      ~{if (singularity_cache) then "--singularity-cache" else ""} \
      ~{if defined(parallel_downloads) then ("--parallel-downloads " +  '"' + parallel_downloads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0"
  }
  parameter_meta {
    release: "Pipeline release"
    outdir: "Output directory"
    compress: "[tar.gz|tar.bz2|zip|none]\\nArchive compression type"
    force: "Overwrite existing files"
    singularity: "Download singularity images"
    singularity_cache: "Don't copy images to the output directory,\\ndon't set 'singularity.cacheDir' in workflow"
    parallel_downloads: "Number of parallel image downloads"
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    Directory out_singularity_cache = "${in_singularity_cache}"
  }
}