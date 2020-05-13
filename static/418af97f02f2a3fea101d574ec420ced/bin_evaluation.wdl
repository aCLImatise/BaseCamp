version 1.0

task BinEvaluation {
  input {
    String bB
    String rR
    String lL
    String? genomesGenomes
    String? genomesGenomes
    String? ofOf
    String? fastFastA
    File? filesFiles
  }
  command <<<
    bin_evaluation \
      ~{genomesGenomes} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{genomesGenomes} \
      ~{ofOf} \
      ~{fastFastA} \
      ~{filesFiles}
  >>>
}