version 1.0

task MafChunkpy {
  input {
    String? prob
    String chunk_size
    String out_dir
  }
  command <<<
    maf_chunk_py \
      ~{chunk_size} \
      ~{out_dir} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    prob: "Probability of writing a given chunk"
    chunk_size: ""
    out_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}