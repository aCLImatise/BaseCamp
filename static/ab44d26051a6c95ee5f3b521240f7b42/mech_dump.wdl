version 1.0

task MechDump {
  input {
    Boolean headersHeaders
    Boolean formsForms
    Boolean linksLinks
    Boolean imagesImages
    Boolean allAll
    Boolean textText
    String userUser
    String passwordPassword
    File cookieCookieFile
    String agentAgent
    String agentAgentAlias
    Boolean absoluteAbsolute
  }
  command <<<
    mech-dump \
      ~{true="--headers" false="" headersHeaders} \
      ~{true="--forms" false="" formsForms} \
      ~{true="--links" false="" linksLinks} \
      ~{true="--images" false="" imagesImages} \
      ~{true="--all" false="" allAll} \
      ~{true="--text" false="" textText} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(cookieCookieFile) then ("--cookie-file " +  '"' + cookieCookieFile + '"') else ""} \
      ~{if defined(agentAgent) then ("--agent " +  '"' + agentAgent + '"') else ""} \
      ~{if defined(agentAgentAlias) then ("--agent-alias " +  '"' + agentAgentAlias + '"') else ""} \
      ~{true="--absolute" false="" absoluteAbsolute}
  >>>
}