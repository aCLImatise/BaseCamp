version 1.0

task TripailleFeatureGetFeatures {
  input {
    Int? feature_id
  }
  command <<<
    tripaille feature get_features \
      ~{if defined(feature_id) then ("--feature_id " +  '"' + feature_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature_id: "A feature entity/node ID"
  }
  output {
    File out_stdout = stdout()
  }
}