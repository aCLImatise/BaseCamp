version 1.0

task Lastmapprobs {
  input {
    Float? mis_map
    Int? score
  }
  command <<<
    last_map_probs \
      ~{if defined(mis_map) then ("--mismap " +  '"' + mis_map + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mis_map: "don't write alignments with mismap probability > M\\n(default: 0.01)"
    score: "don't write alignments with score < S (default:\\ne+t*ln[1000])\\n"
  }
  output {
    File out_stdout = stdout()
  }
}