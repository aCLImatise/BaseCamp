version 1.0

task NucleoatacRun {
  input {
    String? bed
    String? bam
    String? out
    String? fast_a
    String? pwm
    String? cores
    Boolean? write_all
  }
  command <<<
    nucleoatac run \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--write_all" false="" write_all}
  >>>
  parameter_meta {
    bed: "Regions for which to do stuff."
    bam: "Accepts sorted BAM file"
    out: "give output basename"
    fast_a: "Indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included in package"
    cores: "Number of cores to use"
    write_all: "write all tracks"
  }
}