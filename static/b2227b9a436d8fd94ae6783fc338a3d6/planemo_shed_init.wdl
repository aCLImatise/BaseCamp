version 1.0

task PlanemoShedInit {
  input {
    File fromFromWorkflow
    String descriptionDescription
    String longLongDescription
    String remoteRemoteRepositoryUrl
    String homepageHomepageUrl
    Boolean categoryCategory
    String ownerOwner
    String nameName
    Boolean forceForce
  }
  command <<<
    planemo shed_init \
      ~{if defined(fromFromWorkflow) then ("--from_workflow " +  '"' + fromFromWorkflow + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(longLongDescription) then ("--long_description " +  '"' + longLongDescription + '"') else ""} \
      ~{if defined(remoteRemoteRepositoryUrl) then ("--remote_repository_url " +  '"' + remoteRemoteRepositoryUrl + '"') else ""} \
      ~{if defined(homepageHomepageUrl) then ("--homepage_url " +  '"' + homepageHomepageUrl + '"') else ""} \
      ~{true="--category" false="" categoryCategory} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}