version 1.0

task GenerateTranscriptsGffpy {
  command <<<
    generate_transcripts_gff_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rilseq:0.81--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}