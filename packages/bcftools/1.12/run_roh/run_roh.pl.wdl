version 1.0

task Runrohpl {
  input {
    File? af_an_not_s
    Directory? in_dir
    String? include
    String? exclude
    Int? min_length
    Directory? gen_map
    Float? rec_rate
    Int? min_markers
    Directory? outdir
    Int? min_qual
    String? roh_args
    Boolean? silent
  }
  command <<<
    run_roh_pl \
      ~{if defined(af_an_not_s) then ("--af-annots " +  '"' + af_an_not_s + '"') else ""} \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(gen_map) then ("--genmap " +  '"' + gen_map + '"') else ""} \
      ~{if defined(rec_rate) then ("--rec-rate " +  '"' + rec_rate + '"') else ""} \
      ~{if defined(min_markers) then ("--min-markers " +  '"' + min_markers + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(roh_args) then ("--roh-args " +  '"' + roh_args + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    af_an_not_s: "Allele frequency annotations [1000GP-AFs/AFs.tab.gz]"
    in_dir: "Input directory with VCF files"
    include: "Select sites for which the expression is true"
    exclude: "Exclude sites for which the epxression is true"
    min_length: "Filter input regions shorter than this [1e6]"
    gen_map: "Directory with genetic map in IMPUTE2 format (optional)"
    rec_rate: "constant recombination rate per bp (optional)"
    min_markers: "Filter input regions with fewer marker than this [100]"
    outdir: "Output directory"
    min_qual: "Filter input regions with quality smaller than this [10]"
    roh_args: "Extra arguments to pass to bcftools roh"
    silent: "Quiet output, do not print commands"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}