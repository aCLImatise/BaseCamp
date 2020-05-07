version 1.0

task AssessHomopolymersCountHomopolymer {
  input {
    String outputOutputDir
    String homoHomoLen
    String? bamBam
  }
  command <<<
    assess_homopolymers count homopolymer \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(homoHomoLen) then ("--homo_len " +  '"' + homoHomoLen + '"') else ""}
  >>>
}