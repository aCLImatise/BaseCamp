version 1.0

task OmeroAdminEmail {
  input {
    Boolean everyoneEveryone
    Boolean inactiveInactive
    String waitWait
    String userUserId
    String userUserName
    String groupGroupId
    String groupGroupName
    String? subjectSubject
    String? textText
  }
  command <<<
    omero admin email \
      ~{subjectSubject} \
      ~{true="--everyone" false="" everyoneEveryone} \
      ~{true="--inactive" false="" inactiveInactive} \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""} \
      ~{if defined(userUserId) then ("--user-id " +  '"' + userUserId + '"') else ""} \
      ~{if defined(userUserName) then ("--user-name " +  '"' + userUserName + '"') else ""} \
      ~{if defined(groupGroupId) then ("--group-id " +  '"' + groupGroupId + '"') else ""} \
      ~{if defined(groupGroupName) then ("--group-name " +  '"' + groupGroupName + '"') else ""} \
      ~{textText}
  >>>
}