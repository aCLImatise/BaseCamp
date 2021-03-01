version 1.0

task NfcoreDownload {
  input {
    String? release
    Boolean? singularity
    Directory? outdir
    Boolean? compress
    String pipeline_name
  }
  command <<<
    nf_core download \
      ~{pipeline_name} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (singularity) then "--singularity" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    release: "Pipeline release"
    singularity: "Download singularity containers"
    outdir: "Output directory"
    compress: "[tar.gz|tar.bz2|zip|none]\\nCompression type"
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}