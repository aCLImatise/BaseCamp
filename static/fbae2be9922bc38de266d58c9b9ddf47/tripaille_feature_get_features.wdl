version 1.0

task TripailleFeatureGetFeatures {
  input {
    Int featureFeatureId
  }
  command <<<
    tripaille feature get_features \
      ~{if defined(featureFeatureId) then ("--feature_id " +  '"' + featureFeatureId + '"') else ""}
  >>>
}