version 1.0

task IucnSimGetIucnData {
  input {
    String referenceReferenceGroup
    String referenceReferenceRank
    File targetTargetSpeciesList
    File outdirOutdir
    String iucnIucnKey
    Boolean noNoOnlineSync
  }
  command <<<
    iucn_sim get_iucn_data \
      ~{if defined(referenceReferenceGroup) then ("--reference_group " +  '"' + referenceReferenceGroup + '"') else ""} \
      ~{if defined(referenceReferenceRank) then ("--reference_rank " +  '"' + referenceReferenceRank + '"') else ""} \
      ~{if defined(targetTargetSpeciesList) then ("--target_species_list " +  '"' + targetTargetSpeciesList + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(iucnIucnKey) then ("--iucn_key " +  '"' + iucnIucnKey + '"') else ""} \
      ~{true="--no_online_sync" false="" noNoOnlineSync}
  >>>
}