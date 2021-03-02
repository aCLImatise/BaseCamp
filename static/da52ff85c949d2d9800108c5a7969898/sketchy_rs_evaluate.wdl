version 1.0

task SketchyrsEvaluate {
  input {
    File? features
    Int? stable
    String sketchy_rs
  }
  command <<<
    sketchy_rs evaluate \
      ~{sketchy_rs} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(stable) then ("--stable " +  '"' + stable + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    features: "genotype feature index"
    stable: "reads to stable breakpoint"
    sketchy_rs: ""
  }
  output {
    File out_stdout = stdout()
  }
}