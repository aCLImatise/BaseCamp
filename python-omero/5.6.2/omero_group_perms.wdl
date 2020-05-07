version 1.0

task OmeroGroupPerms {
  input {
    String idId
    String nameName
    String permsPerms
    String typeType
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
    omero group perms \
      ~{omerOmerOUserdir} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(permsPerms) then ("--perms " +  '"' + permsPerms + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
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