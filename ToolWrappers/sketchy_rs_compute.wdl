version 1.0

task SketchyrsCompute {
  input {
    Int? progress
    Int? ranks
    File? sketch
    Int? threads
    String sketchy_rs
  }
  command <<<
    sketchy_rs compute \
      ~{sketchy_rs} \
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
    sketchy_rs: ""
  }
  output {
    File out_stdout = stdout()
  }
}