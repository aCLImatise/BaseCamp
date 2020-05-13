version 1.0

task SketchyRsEvaluate {
  input {
    File featuresFeatures
    Int stableStable
    String? optionsOptions
  }
  command <<<
    sketchy-rs evaluate \
      ~{optionsOptions} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(stableStable) then ("--stable " +  '"' + stableStable + '"') else ""}
  >>>
}