version 1.0

task RnazAnnotate.pl {
  input {
    Boolean? bed
    File? file
  }
  command <<<
    rnazAnnotate.pl \
      ~{file} \
      ~{true="--bed" false="" bed}
  >>>
  parameter_meta {
    bed: "Set the annotation BED file with this option."
    file: ""
  }
}