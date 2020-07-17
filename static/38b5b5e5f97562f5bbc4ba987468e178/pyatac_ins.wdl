version 1.0

task PyatacIns {
  input {
    String? bam
    Int? cores
    Int? lower
    Int? upper
    Int? smooth
    Boolean? not_atac
    String? bed
    String? out
  }
  command <<<
    pyatac ins \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{true="--not_atac" false="" not_atac} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bam: "Accepts sorted BAM file"
    cores: "Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    smooth: "smoothing window for guassian smoothing. default is no smoothing"
    not_atac: "Don't use atac offsets"
    bed: ""
    out: ""
  }
}