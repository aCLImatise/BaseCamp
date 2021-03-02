version 1.0

task RagtagStatspy {
  input {
    String? ragtag_dot_scaffolds_dot_agp
    String? ragtag_dot_confidence_dot_txt
  }
  command <<<
    ragtag_stats_py \
      ~{ragtag_dot_scaffolds_dot_agp} \
      ~{ragtag_dot_confidence_dot_txt}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0"
  }
  parameter_meta {
    ragtag_dot_scaffolds_dot_agp: ""
    ragtag_dot_confidence_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}