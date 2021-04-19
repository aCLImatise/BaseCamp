version 1.0

task ViewBSMethOneRegion {
  input {
    Boolean? region
    Boolean? min_depth
    Boolean? maxdepth
    Boolean? flank
    Directory? outdir
    File? prefix
    String verbose
  }
  command <<<
    ViewBS MethOneRegion \
      ~{verbose} \
      ~{if (region) then "--region" else ""} \
      ~{if (min_depth) then "--minDepth" else ""} \
      ~{if (maxdepth) then "--maxDepth" else ""} \
      ~{if (flank) then "--flank" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (prefix) then "--prefix" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  parameter_meta {
    region: "[required]\\n- One target region. [chr1:100-200]"
    min_depth: "[optional]\\n- Minimum read depth for calculating methylation level. [default: 5]"
    maxdepth: "[optional]\\n- Maximum read depth for calculating methylation level. [default: 10000]"
    flank: "[optional]\\n- Extend the provided reigons to the flanking regions. [default: 400]"
    outdir: "[optional]\\n- Output folder. [Default: ./]"
    prefix: "[optional]\\n- Provide prefix for the output file. [Default: MethOneRegion]\\n"
    verbose: "- Suppress extended information or not. [Default: TRUE]"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}