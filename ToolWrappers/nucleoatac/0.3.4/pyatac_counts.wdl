version 1.0

task PyatacCounts {
  input {
    File? bam
    File? bed
    String? out
    Boolean? not_atac
    Int? lower
    Int? upper
  }
  command <<<
    pyatac counts \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (not_atac) then "--not_atac" else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Aligned reads"
    bed: "Windows in which to compute counts"
    out: "Basename for output"
    not_atac: "Don't use atac offsets"
    lower: "lower limit on insert size. Default is 0"
    upper: "upper limit on insert size. Default is 500"
  }
  output {
    File out_stdout = stdout()
  }
}