version 1.0

task AddScoreTagsToBam {
  input {
    Boolean pP
    Boolean bB
    Boolean sS
    Boolean tT
    String? referenceReferenceFastA
  }
  command <<<
    add-score-tags-to-bam \
      ~{referenceReferenceFastA} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-T" false="" tT}
  >>>
}