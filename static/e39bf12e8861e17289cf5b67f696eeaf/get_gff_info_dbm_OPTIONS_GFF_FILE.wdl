version 1.0

task GetGffInfoDbmOPTIONSGFFFILE {
  input {
    String outputOutputDir
  }
  command <<<
    get-gff-info dbm OPTIONS GFF_FILE \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}