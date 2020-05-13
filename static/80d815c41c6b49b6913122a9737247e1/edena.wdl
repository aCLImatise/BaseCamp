version 1.0

task Edena {
  input {
    Int truncateTruncate
    Int deadDeadEnds
    Boolean discardDiscardNonUsable
    Int trimTrim
    Boolean shellShell
  }
  command <<<
    edena \
      ~{if defined(truncateTruncate) then ("-truncate " +  '"' + truncateTruncate + '"') else ""} \
      ~{if defined(deadDeadEnds) then ("-deadEnds " +  '"' + deadDeadEnds + '"') else ""} \
      ~{true="-discardNonUsable" false="" discardDiscardNonUsable} \
      ~{if defined(trimTrim) then ("-trim " +  '"' + trimTrim + '"') else ""} \
      ~{true="-shell" false="" shellShell}
  >>>
}