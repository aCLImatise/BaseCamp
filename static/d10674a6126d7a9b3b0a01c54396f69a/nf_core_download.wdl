version 1.0

task NfcoreDownload {
  input {
    String? release
    Boolean? singularity
    Directory? outdir
    Boolean? compress
    String configs_dot
  }
  command <<<
    nf_core download \
      ~{configs_dot} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (singularity) then "--singularity" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    release: "Pipeline release"
    singularity: "Download singularity containers"
    outdir: "Output directory"
    compress: "[tar.gz|tar.bz2|zip|none]\\nCompression type"
    configs_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}