version 1.0

task PyatacBias {
  input {
    String? fast_a
    String? pwm
    String? bed
    String? out
    Int? cores
  }
  command <<<
    pyatac bias \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Accepts fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included in package"
    bed: "Positions around which to get nucleotide frequencies"
    out: "Basename for output"
    cores: "number of cores to use"
  }
}