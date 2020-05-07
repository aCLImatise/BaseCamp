version 1.0

task DriveUnshare {
  input {
    Boolean idId
    Boolean noNoPrompt
    Boolean quietQuiet
    String roleRole
    String typeType
    Boolean verboseVerbose
  }
  command <<<
    drive unshare \
      ~{true="-id" false="" idId} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(roleRole) then ("-role " +  '"' + roleRole + '"') else ""} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}