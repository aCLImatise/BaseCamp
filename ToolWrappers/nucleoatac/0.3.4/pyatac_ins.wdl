version 1.0

task PyatacIns {
  input {
    File? bam
    File? bed
    Int? lower
    Int? upper
    Int? smooth
    String? out
    String smoothing
  }
  command <<<
    pyatac ins \
      ~{smoothing} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bam: "Accepts sorted BAM file"
    bed: "Regions in which to get insertions\\n--out basename\\n--cores int     Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    smooth: "smoothing window for guassian smoothing. default is no"
    out: ""
    smoothing: "--not_atac      Don't use atac offsets"
  }
  output {
    File out_stdout = stdout()
  }
}