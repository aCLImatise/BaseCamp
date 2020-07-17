version 1.0

task PyatacSizes {
  input {
    String? bam
    String? bed
    String? out
    Boolean? not_atac
    Int? lower
    Int? upper
    Boolean? no_plot
  }
  command <<<
    pyatac sizes \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--not_atac" false="" not_atac} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{true="--no_plot" false="" no_plot}
  >>>
  parameter_meta {
    bam: "Aligned reads"
    bed: "Only compute size distribution for fragment centered within regions in bed file"
    out: "Basename for output"
    not_atac: "Don't use atac offsets"
    lower: "lower limit on insert size. Default is 0"
    upper: "upper limit on insert size. Default is 500"
    no_plot: "Don't plot output"
  }
}