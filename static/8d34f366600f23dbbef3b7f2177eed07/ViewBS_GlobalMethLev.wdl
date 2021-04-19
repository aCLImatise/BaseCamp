version 1.0

task ViewBSGlobalMethLev {
  input {
    Boolean? verbose
    Boolean? min_depth
    Boolean? maxdepth
    Directory? outdir
    File? prefix
    Boolean? height
    Boolean? width
    String report
  }
  command <<<
    ViewBS GlobalMethLev \
      ~{report} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (min_depth) then "--minDepth" else ""} \
      ~{if (maxdepth) then "--maxDepth" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (height) then "--height" else ""} \
      ~{if (width) then "--width" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  parameter_meta {
    verbose: "[required]\\n- Provide the sample information. [Format: methlationfile,samplename]\\nIt is possible to specify more than one sample pair by using the options\\n--sample more than once. The methylation information can also be read from\\na TEXT file. Instead of giving an explicit sample information pairs,\\nyou need to write \\\"file:\\\" followed by the name of the TEXT file.\\nSee details at: https://github.com/readbio/ViewBS"
    min_depth: "[optional]\\n- Minimum read depth for calculating methylation level. [default: 1]"
    maxdepth: "[optional]\\n- Maximum read depth for calculating methylation level. [default: 10000]"
    outdir: "[optional]\\n- Provide the output directory. [default: ./]"
    prefix: "[optional]\\n- Provide prefix for the output file. [default: GlobalMethLev]"
    height: "[optional]\\n- Height of PDF figure. Unit is cm. [default: 10]"
    width: "[optional]\\n- Width of PDF figure. Unit is cm. [default: 10]\\n"
    report: "Required arguments"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}