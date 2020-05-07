version 1.0

task ScramTest {
  input {
    String iI
    String rR
    String rR
    String tT
    String? inputInputFile
  }
  command <<<
    scram_test \
      ~{inputInputFile} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}