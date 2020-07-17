version 1.0

task ExpandFastq {
  input {
    Boolean? bccdehikllnnprsvzzzero
    Boolean? apple
    Boolean? extension
    Boolean? mime_encoding
    File file
  }
  command <<<
    expand_fastq \
      ~{file} \
      ~{true="-bcCdEhikLlNnprsvzZ0" false="" bccdehikllnnprsvzzzero} \
      ~{true="--apple" false="" apple} \
      ~{true="--extension" false="" extension} \
      ~{true="--mime-encoding" false="" mime_encoding}
  >>>
  parameter_meta {
    bccdehikllnnprsvzzzero: ""
    apple: ""
    extension: ""
    mime_encoding: ""
    file: ""
  }
}