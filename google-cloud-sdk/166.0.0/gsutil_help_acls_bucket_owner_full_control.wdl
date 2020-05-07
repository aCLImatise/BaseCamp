version 1.0

task GsutilHelpAclsBucketOwnerFullControl {
  input {
    String? commandCommand
    String? orOr
    String? topicTopic
  }
  command <<<
    gsutil help acls bucket-owner-full-control \
      ~{commandCommand} \
      ~{orOr} \
      ~{topicTopic}
  >>>
}