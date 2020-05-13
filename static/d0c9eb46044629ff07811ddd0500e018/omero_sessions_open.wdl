version 1.0

task OmeroSessionsOpen {
  input {
    String userUserId
    String userUserName
    String groupGroupId
    String groupGroupName
    Boolean timeoutTimeout
  }
  command <<<
    omero sessions open \
      ~{if defined(userUserId) then ("--user-id " +  '"' + userUserId + '"') else ""} \
      ~{if defined(userUserName) then ("--user-name " +  '"' + userUserName + '"') else ""} \
      ~{if defined(groupGroupId) then ("--group-id " +  '"' + groupGroupId + '"') else ""} \
      ~{if defined(groupGroupName) then ("--group-name " +  '"' + groupGroupName + '"') else ""} \
      ~{true="--timeout" false="" timeoutTimeout}
  >>>
}