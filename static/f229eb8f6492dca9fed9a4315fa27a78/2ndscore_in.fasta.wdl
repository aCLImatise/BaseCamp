version 1.0

task NdscoreInfasta {
  input {
    Boolean? gc
  }
  command <<<
    _ndscore in_fasta \
      ~{if (gc) then "--gc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gc: "=-2.3 --au=-0.9 --gu=1.3 --mm=3.5 --gap=6"
  }
  output {
    File out_stdout = stdout()
  }
}