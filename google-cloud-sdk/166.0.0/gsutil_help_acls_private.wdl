version 1.0

task GsutilHelpAclsPrivate {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls private \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}