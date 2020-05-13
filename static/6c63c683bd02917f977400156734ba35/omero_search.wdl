version 1.0

task OmeroSearch {
  input {
    Boolean indexIndex
    Boolean noNoParse
    Boolean fieldField
    String fromFrom
    String toTo
    String dateDateType
    Boolean adminAdmin
    Boolean allAll
    Boolean idsIdsOnly
    String limitLimit
    String offsetOffset
    String styleStyle
    Boolean createCreate
    String serverServer
    String portPort
    String groupGroup
    String userUser
    String passwordPassword
    String keyKey
    String sudoSudo
    Boolean quietQuiet
    String? typeType
    String? queryQuery
    String? omerOmerOUserdir
    String? omerOmerOSessionDir
    String? omerOmerOTmpdir
    String? omerOmerOPassword
  }
  command <<<
    omero search \
      ~{typeType} \
      ~{omerOmerOUserdir} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--no-parse" false="" noNoParse} \
      ~{true="--field" false="" fieldField} \
      ~{if defined(fromFrom) then ("--from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(toTo) then ("--to " +  '"' + toTo + '"') else ""} \
      ~{if defined(dateDateType) then ("--date-type " +  '"' + dateDateType + '"') else ""} \
      ~{true="--admin" false="" adminAdmin} \
      ~{true="--all" false="" allAll} \
      ~{true="--ids-only" false="" idsIdsOnly} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--create" false="" createCreate} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(sudoSudo) then ("--sudo " +  '"' + sudoSudo + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{queryQuery} \
      ~{omerOmerOSessionDir} \
      ~{omerOmerOTmpdir} \
      ~{omerOmerOPassword}
  >>>
}