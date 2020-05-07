version 1.0

task SmofSubseq {
  input {
    String bB
    File gffGff
    Boolean keepKeep
    String colorColor
    Boolean forceForceColor
    String? inputInput
  }
  command <<<
    smof subseq \
      ~{inputInput} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{true="--keep" false="" keepKeep} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{true="--force-color" false="" forceForceColor}
  >>>
}