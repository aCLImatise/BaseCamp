version 1.0

task NfCoreCreate {
  input {
    String nameName
    String descriptionDescription
    String authorAuthor
    String newNewVersion
    Boolean noNoGit
    Boolean forceForce
    String outdirOutdir
  }
  command <<<
    nf-core create \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""} \
      ~{if defined(newNewVersion) then ("--new-version " +  '"' + newNewVersion + '"') else ""} \
      ~{true="--no-git" false="" noNoGit} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}