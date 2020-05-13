version 1.0

task PyatacPwm {
  input {
    String fastFastA
    String bamBam
    String bedBed
    Boolean dinucleotideDinucleotide
    Int flankFlank
    Int lowerLower
    Int upperUpper
    Boolean notNotAtac
    Boolean noNoSym
    String outOut
    Int coresCores
  }
  command <<<
    pyatac pwm \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--dinucleotide" false="" dinucleotideDinucleotide} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(upperUpper) then ("--upper " +  '"' + upperUpper + '"') else ""} \
      ~{true="--not_atac" false="" notNotAtac} \
      ~{true="--no_sym" false="" noNoSym} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}