version 1.0

task PyatacPwm {
  input {
    File? fast_a
    File? bam
    Boolean? dinucleotide
    Int? lower
    Int? upper
    Boolean? not_atac
    Boolean? no_sym
    String? out
    Int? cores
    File? bed
    String region
    String nucleotide
  }
  command <<<
    pyatac pwm \
      ~{region} \
      ~{nucleotide} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if (dinucleotide) then "--dinucleotide" else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if (not_atac) then "--not_atac" else ""} \
      ~{if (no_sym) then "--no_sym" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "Accepts fasta file"
    bam: "Reads around which to get nucleotide freq"
    dinucleotide: "Compute dinucleotide frequencies instead of single"
    lower: "lower limit on insert size. default is 0"
    upper: "upper limit on insert size. default is 2000"
    not_atac: "Don't use atac offsets"
    no_sym: "Don't symmetrize PWM"
    out: "Basename for output"
    cores: "number of cores to use"
    bed: ""
    region: "--bed bed_file        Regions from which to use reads"
    nucleotide: "--flank int           Bases away from insertion site to get frequencies for."
  }
  output {
    File out_stdout = stdout()
  }
}