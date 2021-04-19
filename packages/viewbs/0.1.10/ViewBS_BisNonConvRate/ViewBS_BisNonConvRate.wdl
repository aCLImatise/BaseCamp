version 1.0

task ViewBSBisNonConvRate {
  input {
    Boolean? verbose
    Boolean? chrom
    Boolean? min_depth
    Boolean? context
    Boolean? maxdepth
    Directory? outdir
    File? prefix
    Boolean? height
    Boolean? width
  }
  command <<<
    ViewBS BisNonConvRate \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (chrom) then "--chrom" else ""} \
      ~{if (min_depth) then "--minDepth" else ""} \
      ~{if (context) then "--context" else ""} \
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
    chrom: "[required]\\n- Chromosome ID that the users want to use to estimate non-conversion rate."
    min_depth: "[optional]\\n- Minimum read depth for calculating methylation level. [default: 5]"
    context: "[optional]\\n- Sequence context for calculating non-conversion rate. It is possible to specify\\nmore than one sample pair by using the option --context more than once. [default: CXX]\\nCXX means non-conversion rate will be calculated based on all the 3 sequence context."
    maxdepth: "[optional]\\n- Maximum read depth for calculating methylation level. [default: 10000]"
    outdir: "[optional]\\n- Provide the output directory. [default: ./]"
    prefix: "[optional]\\n- Provide prefix for the output file. [default: GlobalMethLev]"
    height: "[optional]\\n- Height of PDF figure. Unit is cm. [default: 10]"
    width: "[optional]\\n- Width of PDF figure. Unit is cm. [default: 10]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}