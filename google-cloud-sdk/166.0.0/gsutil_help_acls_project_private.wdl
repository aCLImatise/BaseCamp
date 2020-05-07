version 1.0

task GsutilHelpAclsProjectPrivate {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls project-private \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}