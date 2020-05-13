version 1.0

task PrepareRefseqs.pl {
  input {
    Boolean trackTrackConfig
  }
  command <<<
    prepare-refseqs.pl \
      ~{true="--trackConfig" false="" trackTrackConfig}
  >>>
}