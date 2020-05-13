version 1.0

task GsutilHelpAclsPublicReadWrite {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls public-read-write \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}