version 1.0

task ExonUtils {
  input {
    String getGetConstExons
    Int minMinExonSize
    String outputOutputDir
  }
  command <<<
    exon_utils \
      ~{if defined(getGetConstExons) then ("--get-const-exons " +  '"' + getGetConstExons + '"') else ""} \
      ~{if defined(minMinExonSize) then ("--min-exon-size " +  '"' + minMinExonSize + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}