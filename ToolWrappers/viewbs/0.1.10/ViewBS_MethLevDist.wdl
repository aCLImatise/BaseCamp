version 1.0

task ViewBSMethLevDist {
  input {
    Boolean? verbose
    Boolean? region
    Boolean? min_depth
    Boolean? maxdepth
    Boolean? bin_meth_lev
    Directory? outdir
    File? prefix
    Boolean? height
    Boolean? width
  }
  command <<<
    ViewBS MethLevDist \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (min_depth) then "--minDepth" else ""} \
      ~{if (maxdepth) then "--maxDepth" else ""} \
      ~{if (bin_meth_lev) then "--binMethLev" else ""} \
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
    region: "[optional]\\n- Restrict the calculation to the regions provided only."
    min_depth: "[optional]\\n- Minimum read depth for calculating methylation level. [default: 5]"
    maxdepth: "[optional]\\n- Maximum read depth for calculating methylation level. [default: 10000]"
    bin_meth_lev: "[optional]\\n- Bin size to calculate the distribution of methylation level. [default: 0.1]"
    outdir: "[optional]\\n- Provide the output directory. [default: ./]"
    prefix: "[optional]\\n- Provide prefix for the output file. [default: MethLevDist]"
    height: "[optional]\\n- Height of PDF figure. Unit is cm. [default: 10]"
    width: "[optional]\\n- Width of PDF figure. Unit is cm. [default: 10]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}