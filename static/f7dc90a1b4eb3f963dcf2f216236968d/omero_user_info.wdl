version 1.0

task OmeroUserInfo {
  input {
    String styleStyle
    Boolean longLong
    Boolean countCount
    Boolean sortSortById
    Boolean sortSortByLogin
    Boolean sortSortByFirstName
    Boolean sortSortByLastName
    Boolean sortSortByEmail
    Array[String]+ userUserId
    Array[String]+ userUserName
    String? userUser
  }
  command <<<
    omero user info \
      ~{userUser} \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--long" false="" longLong} \
      ~{true="--count" false="" countCount} \
      ~{true="--sort-by-id" false="" sortSortById} \
      ~{true="--sort-by-login" false="" sortSortByLogin} \
      ~{true="--sort-by-first-name" false="" sortSortByFirstName} \
      ~{true="--sort-by-last-name" false="" sortSortByLastName} \
      ~{true="--sort-by-email" false="" sortSortByEmail} \
      ~{if defined(userUserId) then ("--user-id " +  '"' + userUserId + '"') else ""} \
      ~{if defined(userUserName) then ("--user-name " +  '"' + userUserName + '"') else ""}
  >>>
}