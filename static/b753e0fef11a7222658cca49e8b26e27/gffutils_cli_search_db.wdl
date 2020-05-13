version 1.0

task GffutilsCliSearchDb {
  input {
    String featureFeatureType
    String? dbDb
    String? textText
  }
  command <<<
    gffutils-cli search db \
      ~{dbDb} \
      ~{if defined(featureFeatureType) then ("--featuretype " +  '"' + featureFeatureType + '"') else ""} \
      ~{textText}
  >>>
}