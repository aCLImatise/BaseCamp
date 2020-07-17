version 1.0

task NfCoreDownload {
  input {
    String? release
    Boolean? singularity
    String? outdir
    Boolean? compress
    String pipeline_name
  }
  command <<<
    nf-core download \
      ~{pipeline_name} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{true="--singularity" false="" singularity} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--compress" false="" compress}
  >>>
  parameter_meta {
    release: "Pipeline release"
    singularity: "Download singularity containers"
    outdir: "Output directory"
    compress: "[tar.gz|tar.bz2|zip|none] Compression type"
    pipeline_name: ""
  }
}