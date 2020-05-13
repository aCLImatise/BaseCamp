version 1.0

task AlignmentStator {
  input {
    String bB
  }
  command <<<
    alignment_stator \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}