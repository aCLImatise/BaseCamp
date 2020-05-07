version 1.0

task Gffcompare {
  input {
    String kK
  }
  command <<<
    gffcompare \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""}
  >>>
}