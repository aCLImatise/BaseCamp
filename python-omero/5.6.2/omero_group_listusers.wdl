version 1.0

task OmeroGroupListusers {
  input {
    String styleStyle
    Boolean longLong
    Boolean countCount
    Boolean sortSortById
    Boolean sortSortByLogin
    Boolean sortSortByFirstName
    Boolean sortSortByLastName
    Boolean sortSortByEmail
    Array[String]+ groupGroupId
    Array[String]+ groupGroupName
    String? groupGroup
  }
  command <<<
    omero group listusers \
      ~{groupGroup} \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--long" false="" longLong} \
      ~{true="--count" false="" countCount} \
      ~{true="--sort-by-id" false="" sortSortById} \
      ~{true="--sort-by-login" false="" sortSortByLogin} \
      ~{true="--sort-by-first-name" false="" sortSortByFirstName} \
      ~{true="--sort-by-last-name" false="" sortSortByLastName} \
      ~{true="--sort-by-email" false="" sortSortByEmail} \
      ~{if defined(groupGroupId) then ("--group-id " +  '"' + groupGroupId + '"') else ""} \
      ~{if defined(groupGroupName) then ("--group-name " +  '"' + groupGroupName + '"') else ""}
  >>>
}