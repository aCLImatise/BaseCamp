version 1.0

task OmeroUserAdd {
  input {
    Boolean adminAdmin
    String userUserPassword
    Boolean noNoPassword
    Array[String]+ groupGroupId
    Array[String]+ groupGroupName
    Boolean createCreate
    String serverServer
    String portPort
    String groupGroup
    String userUser
    String passwordPassword
    String keyKey
    String sudoSudo
    Boolean quietQuiet
    String? usernameUsername
    String? firstFirstName
    String? lastLastName
    String? groupGroup
    String? omerOmerOUserdir
    String? omerOmerOSessionDir
    String? omerOmerOTmpdir
    String? omerOmerOPassword
  }
  command <<<
    omero user add \
      ~{usernameUsername} \
      ~{groupGroup} \
      ~{omerOmerOUserdir} \
      ~{true="--admin" false="" adminAdmin} \
      ~{if defined(userUserPassword) then ("--userpassword " +  '"' + userUserPassword + '"') else ""} \
      ~{true="--no-password" false="" noNoPassword} \
      ~{if defined(groupGroupId) then ("--group-id " +  '"' + groupGroupId + '"') else ""} \
      ~{if defined(groupGroupName) then ("--group-name " +  '"' + groupGroupName + '"') else ""} \
      ~{true="--create" false="" createCreate} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(sudoSudo) then ("--sudo " +  '"' + sudoSudo + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{firstFirstName} \
      ~{omerOmerOSessionDir} \
      ~{lastLastName} \
      ~{omerOmerOTmpdir} \
      ~{omerOmerOPassword}
  >>>
}