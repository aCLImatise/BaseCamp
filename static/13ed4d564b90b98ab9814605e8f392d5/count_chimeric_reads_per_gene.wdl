version 1.0

task CountChimericReadsPerGene.py {
  input {
    Boolean singlesSingles
    Boolean quietQuiet
    String featureFeature
    String identifierIdentifier
    String overlapOverlap
    String? genesGenesGff
    String? readsReadsFiles
  }
  command <<<
    count_chimeric_reads_per_gene.py \
      ~{genesGenesGff} \
      ~{true="--singles" false="" singlesSingles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{if defined(identifierIdentifier) then ("--identifier " +  '"' + identifierIdentifier + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{readsReadsFiles}
  >>>
}