version 1.0

task SketchyRsEvaluate {
  input {
    File? features
    Int? stable
  }
  command <<<
    sketchy-rs evaluate \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(stable) then ("--stable " +  '"' + stable + '"') else ""}
  >>>
  parameter_meta {
    features: "genotype feature index"
    stable: "reads to stable breakpoint"
  }
}