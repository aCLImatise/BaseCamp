version 1.0

task AnviGenNetwork {
  input {
    Boolean listListAnnotationSources
  }
  command <<<
    anvi-gen-network \
      ~{true="--list-annotation-sources" false="" listListAnnotationSources}
  >>>
}