version 1.0

task OmeroGroupInfo {
  input {
    String styleStyle
    Boolean countCount
    Boolean longLong
    Boolean sortSortById
    Boolean sortSortByName
    Array[String]+ groupGroupId
    Array[String]+ groupGroupName
    String? groupGroup
  }
  command <<<
    omero group info \
      ~{groupGroup} \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{true="--long" false="" longLong} \
      ~{true="--sort-by-id" false="" sortSortById} \
      ~{true="--sort-by-name" false="" sortSortByName} \
      ~{if defined(groupGroupId) then ("--group-id " +  '"' + groupGroupId + '"') else ""} \
      ~{if defined(groupGroupName) then ("--group-name " +  '"' + groupGroupName + '"') else ""}
  >>>
}