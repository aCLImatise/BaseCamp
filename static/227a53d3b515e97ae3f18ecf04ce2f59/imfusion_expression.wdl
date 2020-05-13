version 1.0

task ImfusionExpression {
  input {
    Boolean pairedPaired
    String strandedStranded
  }
  command <<<
    imfusion-expression \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(strandedStranded) then ("--stranded " +  '"' + strandedStranded + '"') else ""}
  >>>
}