version 1.0

task PyatacCov {
  input {
    File? bam
    File? bed
    Int? lower
    Int? upper
    Int? window
    Float? scale
    Boolean? not_atac
    String? out
  }
  command <<<
    pyatac cov \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (not_atac) then "--not_atac" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bam: "Accepts sorted BAM file"
    bed: "Regions in which to get insertions\\n--out basename\\n--cores int     Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    window: "window for flat smoothing of coverage. default is 121,\\nshould be odd"
    scale: "scaling value. default is 10, corresponding to signal\\ncorresponding to # of fragment centers per 10 bp. Use 1 for\\nfragments per 1 bp."
    not_atac: "Don't use atac offsets"
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}