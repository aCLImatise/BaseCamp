version 1.0

task GsutilHelpAclsBucketOwnerRead {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls bucket-owner-read \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}