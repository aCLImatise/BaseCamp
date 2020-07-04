version 1.0

task MafChunk.py {
  input {
    String? prob
    String chunk_size
    String out_dir
  }
  command <<<
    maf_chunk.py \
      ~{chunk_size} \
      ~{out_dir} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""}
  >>>
  parameter_meta {
    prob: "Probability of writing a given chunk"
    chunk_size: ""
    out_dir: ""
  }
}