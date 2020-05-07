version 1.0

task OmeroUserList {
  input {
    String styleStyle
    Boolean longLong
    Boolean countCount
    Boolean sortSortById
    Boolean sortSortByLogin
    Boolean sortSortByFirstName
    Boolean sortSortByLastName
    Boolean sortSortByEmail
    Boolean createCreate
    String serverServer
    String portPort
    String groupGroup
    String userUser
    String passwordPassword
    String keyKey
    String sudoSudo
    Boolean quietQuiet
    String? omerOmerOUserdir
    String? omerOmerOSessionDir
    String? omerOmerOTmpdir
    String? omerOmerOPassword
  }
  command <<<
    omero user list \
      ~{omerOmerOUserdir} \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--long" false="" longLong} \
      ~{true="--count" false="" countCount} \
      ~{true="--sort-by-id" false="" sortSortById} \
      ~{true="--sort-by-login" false="" sortSortByLogin} \
      ~{true="--sort-by-first-name" false="" sortSortByFirstName} \
      ~{true="--sort-by-last-name" false="" sortSortByLastName} \
      ~{true="--sort-by-email" false="" sortSortByEmail} \
      ~{true="--create" false="" createCreate} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(sudoSudo) then ("--sudo " +  '"' + sudoSudo + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{omerOmerOSessionDir} \
      ~{omerOmerOTmpdir} \
      ~{omerOmerOPassword}
  >>>
}