version 1.0

task GsutilHelpAclsPublicRead {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls public-read \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}