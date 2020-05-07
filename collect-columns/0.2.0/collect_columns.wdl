version 1.0

task CollectColumns {
  input {
    String featureFeatureColumn
    String valueValueColumn
    String separatorSeparator
    Boolean nN
    Boolean headerHeader
    Array[String]+ additionalAdditionalAttributes
    File gtfGtf
    String featureFeatureAttribute
    String? outputOutput
    String? tableTable
  }
  command <<<
    collect-columns \
      ~{outputOutput} \
      ~{if defined(featureFeatureColumn) then ("--feature-column " +  '"' + featureFeatureColumn + '"') else ""} \
      ~{if defined(valueValueColumn) then ("--value-column " +  '"' + valueValueColumn + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(additionalAdditionalAttributes) then ("--additional-attributes " +  '"' + additionalAdditionalAttributes + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(featureFeatureAttribute) then ("--feature-attribute " +  '"' + featureFeatureAttribute + '"') else ""} \
      ~{tableTable}
  >>>
}