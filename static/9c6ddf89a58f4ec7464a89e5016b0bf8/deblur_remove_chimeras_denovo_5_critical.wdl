version 1.0

task DeblurRemovechimerasdenovoCritical {
  input {
    String de_blur
    String remove_chimeras_de_novo
    String seqs_fp
    String output_fp
  }
  command <<<
    deblur remove_chimeras_denovo __critical \
      ~{de_blur} \
      ~{remove_chimeras_de_novo} \
      ~{seqs_fp} \
      ~{output_fp}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    de_blur: ""
    remove_chimeras_de_novo: ""
    seqs_fp: ""
    output_fp: ""
  }
  output {
    File out_stdout = stdout()
  }
}