version 1.0

task DriveShare {
  input {
    Boolean idId
    String messageMessage
    Boolean noNoPrompt
    Boolean notifyNotify
    Boolean quietQuiet
    String roleRole
    String typeType
    Boolean verboseVerbose
    Boolean withWithLink
  }
  command <<<
    drive share \
      ~{true="-id" false="" idId} \
      ~{if defined(messageMessage) then ("-message " +  '"' + messageMessage + '"') else ""} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-notify" false="" notifyNotify} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(roleRole) then ("-role " +  '"' + roleRole + '"') else ""} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-with-link" false="" withWithLink}
  >>>
}