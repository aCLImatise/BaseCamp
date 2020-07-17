version 1.0

task SketchyRsCompute {
  input {
    Int? progress
    Int? ranks
    File? sketch
    Int? threads
  }
  command <<<
    sketchy-rs compute \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{if defined(sketch) then ("--sketch " +  '"' + sketch + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    progress: "progress switch > 0"
    ranks: "max ranks per read"
    sketch: "reference sketch"
    threads: "max threads for mash"
  }
}