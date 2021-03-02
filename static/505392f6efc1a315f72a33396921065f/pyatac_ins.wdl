version 1.0

task PyatacIns {
  input {
    File? bam
    File? bed
    Int? cores
    Int? lower
    Int? upper
    Int? smooth
    String smoothing
  }
  command <<<
    pyatac ins \
      ~{smoothing} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Accepts sorted BAM file"
    bed: "Regions in which to get insertions"
    cores: "Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    smooth: "smoothing window for guassian smoothing. default is no"
    smoothing: "--not_atac      Don't use atac offsets"
  }
  output {
    File out_stdout = stdout()
  }
}