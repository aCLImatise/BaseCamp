version 1.0

task Pygvcf2coverage {
  input {
    String? threshold
    Boolean? no_merge
    String? distance
  }
  command <<<
    pygvcf2coverage \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (no_merge) then "--no_merge" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: "DP threshold"
    no_merge: "Do not merge entries"
    distance: "Merging distance\\n"
  }
  output {
    File out_stdout = stdout()
  }
}