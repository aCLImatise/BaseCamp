version 1.0

task SketchyRsCompute {
  input {
    Int progressProgress
    Int ranksRanks
    File sketchSketch
    Int threadsThreads
    String? optionsOptions
  }
  command <<<
    sketchy-rs compute \
      ~{optionsOptions} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(ranksRanks) then ("--ranks " +  '"' + ranksRanks + '"') else ""} \
      ~{if defined(sketchSketch) then ("--sketch " +  '"' + sketchSketch + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}