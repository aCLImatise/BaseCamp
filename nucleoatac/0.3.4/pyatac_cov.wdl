version 1.0

task PyatacCov {
  input {
    String? bam
    Int? cores
    Int? lower
    Int? upper
    Int? window
    Float? scale
    Boolean? not_atac
    String? bed
    String? out
  }
  command <<<
    pyatac cov \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{true="--not_atac" false="" not_atac} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bam: "Accepts sorted BAM file"
    cores: "Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    window: "window for flat smoothing of coverage. default is 121, should be odd"
    scale: "scaling value. default is 10, corresponding to signal corresponding to # of fragment centers per 10 bp. Use 1 for fragments per 1 bp."
    not_atac: "Don't use atac offsets"
    bed: ""
    out: ""
  }
}