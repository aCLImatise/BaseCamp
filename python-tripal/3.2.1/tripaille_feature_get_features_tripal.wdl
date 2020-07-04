version 1.0

task TripailleFeatureGetFeaturesTripal {
  input {
    Int? feature_id
  }
  command <<<
    tripaille feature get_features_tripal \
      ~{if defined(feature_id) then ("--feature_id " +  '"' + feature_id + '"') else ""}
  >>>
  parameter_meta {
    feature_id: "A feature entity/node ID"
  }
}