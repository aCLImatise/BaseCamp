version 1.0

task LoadOverlaps {
  input {
    String bB
    String? deltaDeltaFile
  }
  command <<<
    load-overlaps \
      ~{deltaDeltaFile} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}