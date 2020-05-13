version 1.0

task OmeroHelp {
  input {
    Boolean recursiveRecursive
    Boolean allAll
    Boolean listList
    String? topicTopic
  }
  command <<<
    omero help \
      ~{topicTopic} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--all" false="" allAll} \
      ~{true="--list" false="" listList}
  >>>
}