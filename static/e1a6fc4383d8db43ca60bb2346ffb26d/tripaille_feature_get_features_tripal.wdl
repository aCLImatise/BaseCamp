version 1.0

task TripailleFeatureGetFeaturesTripal {
  input {
    Int featureFeatureId
  }
  command <<<
    tripaille feature get_features_tripal \
      ~{if defined(featureFeatureId) then ("--feature_id " +  '"' + featureFeatureId + '"') else ""}
  >>>
}