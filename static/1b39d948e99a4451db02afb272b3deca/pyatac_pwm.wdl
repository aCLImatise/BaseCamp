version 1.0

task PyatacPwm {
  input {
    String? fast_a
    String? bam
    String? bed
    Boolean? dinucleotide
    Int? flank
    Int? lower
    Int? upper
    Boolean? not_atac
    Boolean? no_sym
    String? out
    Int? cores
  }
  command <<<
    pyatac pwm \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{true="--dinucleotide" false="" dinucleotide} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{true="--not_atac" false="" not_atac} \
      ~{true="--no_sym" false="" no_sym} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Accepts fasta file"
    bam: "Reads around which to get nucleotide freq"
    bed: "Regions from which to use reads"
    dinucleotide: "Compute dinucleotide frequencies instead of single nucleotide"
    flank: "Bases away from insertion site to get frequencies for. Default is 10"
    lower: "lower limit on insert size. default is 0"
    upper: "upper limit on insert size. default is 2000"
    not_atac: "Don't use atac offsets"
    no_sym: "Don't symmetrize PWM"
    out: "Basename for output"
    cores: "number of cores to use"
  }
}