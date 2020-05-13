version 1.0

task BedItemOverlapCount {
  input {
    String hostHost
    String userUser
    String passwordPassword
  }
  command <<<
    bedItemOverlapCount \
      ~{if defined(hostHost) then ("-host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(userUser) then ("-user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("-password " +  '"' + passwordPassword + '"') else ""}
  >>>
}