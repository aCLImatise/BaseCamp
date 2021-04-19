version 1.0

task ViewBSMethHeatmap {
  input {
    Boolean? verbose
    Boolean? region
    Boolean? sample
    Boolean? merge
    Boolean? min_depth
    Boolean? maxdepth
    Boolean? cluster_rows
    Boolean? cluster_cols
    Directory? outdir
    File? prefix
    Boolean? height
    Boolean? width
    Boolean? height_two
    Boolean? width_two
    Boolean? random_region
    String violin_boxplot_dot
  }
  command <<<
    ViewBS MethHeatmap \
      ~{violin_boxplot_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (min_depth) then "--minDepth" else ""} \
      ~{if (maxdepth) then "--maxDepth" else ""} \
      ~{if (cluster_rows) then "--cluster_rows" else ""} \
      ~{if (cluster_cols) then "--cluster_cols" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (height) then "--height" else ""} \
      ~{if (width) then "--width" else ""} \
      ~{if (height_two) then "--height2" else ""} \
      ~{if (width_two) then "--width2" else ""} \
      ~{if (random_region) then "--random_region" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  parameter_meta {
    verbose: "- Suppress extended information or not. [Default: TRUE]"
    region: "[required*]\\n- regions you want to investigate."
    sample: "[required]\\n- Provide the sample information. [Format: methlationfile,samplename]"
    merge: "[optional]\\n- If --merge is provided (True), methylation level for different context will be genrated in one file."
    min_depth: "[optional]\\n- Minimum read depth for calculating methylation level. [default: 5]"
    maxdepth: "[optional]\\n- Maximum read depth for calculating methylation level. [default: 10000]"
    cluster_rows: "[optional]\\n- boolean values determining if rows should be clustered or hclust object."
    cluster_cols: "[optional]\\n- boolean values determining if columns should be clustered or hclust object."
    outdir: "[optional]\\n- Output folder. [Default: ./]"
    prefix: "[required]\\n- Provide prefix for the output file. [Default: MethHeatmap]"
    height: "[optional]\\n- Height of PDF figure (Heatmap). Unit is cm. [Default: 10]"
    width: "[optional]\\n- Width of PDF figure (Heatmap). Unit is cm. [Default: 10]"
    height_two: "[optional]\\n- Height of PDF figure (Violin and boxplot). Unit is cm. [Default: 10]"
    width_two: "[optional]\\n- Width of PDF figure (Violin and boxplot). Unit is cm. [Default: 10]"
    random_region: "[optional]\\n- The number to select the regions randomly for the give list of regions.\\nWhen the given regions are too many, it may cause \\\"cannot allocate\\nvector of size\\\" when generating the heatmap. Then we randomly select\\npart of the data to generate the heatmap. [Default: 2000]\\nIf ViewBS still \\\"cannot allocate vector of size\\\", please select a smaller\\nnumber.\\n"
    violin_boxplot_dot: "Required arguments"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}