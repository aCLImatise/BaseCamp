version 1.0

task PyatacSizes {
  input {
    File? bam
    File? bed
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
      ~{if (not_atac) then "--not_atac" else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if (no_plot) then "--no_plot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Aligned reads"
    bed: "Only compute size distribution for fragment centered\\nwithin regions in bed file"
    out: "Basename for output"
    not_atac: "Don't use atac offsets"
    lower: "lower limit on insert size. Default is 0"
    upper: "upper limit on insert size. Default is 500"
    no_plot: "Don't plot output"
  }
  output {
    File out_stdout = stdout()
  }
}