version 1.0

task JeDemultiplex {
  input {
    String useUse
    String useUse
    String useUse
    String? orOr
  }
  command <<<
    je demultiplex \
      ~{orOr} \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""} \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""} \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""}
  >>>
}