version 1.0

task GsutilHelpAclsAuthenticatedRead {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls authenticated-read \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}