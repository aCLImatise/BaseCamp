version 1.0

task MafSwap {
  input {
    String nN
    String? myMyAlignmentsMaf
  }
  command <<<
    maf-swap \
      ~{myMyAlignmentsMaf} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}