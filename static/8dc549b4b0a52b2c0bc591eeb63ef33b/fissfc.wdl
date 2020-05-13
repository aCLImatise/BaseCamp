version 1.0

task Fissfc {
  input {
    String urlUrl
    String credentialsCredentials
    Boolean verboseVerbose
    Boolean yesYes
    Boolean lL
    Array[String]+ functionFunction
  }
  command <<<
    fissfc \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(credentialsCredentials) then ("--credentials " +  '"' + credentialsCredentials + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--yes" false="" yesYes} \
      ~{true="-l" false="" lL} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""}
  >>>
}