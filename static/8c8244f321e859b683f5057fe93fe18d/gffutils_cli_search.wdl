version 1.0

task GffutilsCliSearch {
  input {
    String featureFeatureType
  }
  command <<<
    gffutils-cli search \
      ~{if defined(featureFeatureType) then ("--featuretype " +  '"' + featureFeatureType + '"') else ""}
  >>>
}