version 1.0

task OmeroUserListgroups {
  input {
    String styleStyle
    Boolean countCount
    Boolean longLong
    Boolean sortSortById
    Boolean sortSortByName
    Array[String]+ userUserId
    Array[String]+ userUserName
    String? userUser
  }
  command <<<
    omero user listgroups \
      ~{userUser} \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{true="--long" false="" longLong} \
      ~{true="--sort-by-id" false="" sortSortById} \
      ~{true="--sort-by-name" false="" sortSortByName} \
      ~{if defined(userUserId) then ("--user-id " +  '"' + userUserId + '"') else ""} \
      ~{if defined(userUserName) then ("--user-name " +  '"' + userUserName + '"') else ""}
  >>>
}