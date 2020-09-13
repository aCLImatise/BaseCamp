version 1.0

task NucleoatacRun {
  input {
    Int? fast_a
    File? bed
    File? bam
    String? out
    Int? pwm
    Int? cores
    Boolean? write_all
  }
  command <<<
    nucleoatac run \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (write_all) then "--write_all" else ""}
  >>>
  parameter_meta {
    fast_a: "[--pwm Tn5_PWM] [--cores num_cores]"
    bed: "Regions for which to do stuff."
    bam: "Accepts sorted BAM file"
    out: "give output basename"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included\\nin package"
    cores: "Number of cores to use"
    write_all: "write all tracks"
  }
  output {
    File out_stdout = stdout()
  }
}