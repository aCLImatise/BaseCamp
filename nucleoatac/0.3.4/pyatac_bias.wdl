version 1.0

task PyatacBias {
  input {
    String fastFastA
    String pwmPwm
    String bedBed
    String outOut
    Int coresCores
  }
  command <<<
    pyatac bias \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(pwmPwm) then ("--pwm " +  '"' + pwmPwm + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}