version 1.0

task NucleoatacRun {
  input {
    String bedBed
    String bamBam
    String outOut
    String fastFastA
    String pwmPwm
    String coresCores
    Boolean writeWriteAll
  }
  command <<<
    nucleoatac run \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(pwmPwm) then ("--pwm " +  '"' + pwmPwm + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--write_all" false="" writeWriteAll}
  >>>
}