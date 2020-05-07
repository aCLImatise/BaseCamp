version 1.0

task GarnettGetFeatureGenes.R {
  input {
    String classifierClassifierObject
    String nodeNode
    String databaseDatabase
    Boolean convertConvertIds
    String outputOutputPath
  }
  command <<<
    garnett_get_feature_genes.R \
      ~{if defined(classifierClassifierObject) then ("--classifier-object " +  '"' + classifierClassifierObject + '"') else ""} \
      ~{if defined(nodeNode) then ("--node " +  '"' + nodeNode + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--convert-ids" false="" convertConvertIds} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}