version 1.0

task AssessHomopolymersCountCount {
  input {
    String outputOutputDir
    String homoHomoLen
    String? bamBam
  }
  command <<<
    assess_homopolymers count count \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(homoHomoLen) then ("--homo_len " +  '"' + homoHomoLen + '"') else ""}
  >>>
}