version 1.0

task ExecAnnotation {
  input {
    Boolean createCreateAlignment
    Boolean reReAnnotate
    Boolean keepKeepTabular
    Boolean keepKeepOutput
  }
  command <<<
    exec_annotation \
      ~{true="--create-alignment" false="" createCreateAlignment} \
      ~{true="--reannotate" false="" reReAnnotate} \
      ~{true="--keep-tabular" false="" keepKeepTabular} \
      ~{true="--keep-output" false="" keepKeepOutput}
  >>>
}