version 1.0

task AssessHomopolymersCountBam {
  input {
    String outputOutputDir
    String homoHomoLen
    String? bamBam
  }
  command <<<
    assess_homopolymers count bam \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(homoHomoLen) then ("--homo_len " +  '"' + homoHomoLen + '"') else ""}
  >>>
}