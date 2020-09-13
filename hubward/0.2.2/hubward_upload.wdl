version 1.0

task HubwardUpload {
  input {
    String? hub_only
    String? rsync_options
    File? host
    File? user
    File? hub_remote
  }
  command <<<
    hubward upload \
      ~{if defined(hub_only) then ("--hub-only " +  '"' + hub_only + '"') else ""} \
      ~{if defined(rsync_options) then ("--rsync_options " +  '"' + rsync_options + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(hub_remote) then ("--hub_remote " +  '"' + hub_remote + '"') else ""}
  >>>
  parameter_meta {
    hub_only: "been specified, only these files will be uploaded to the"
    rsync_options: "Options for rsync. Default is \\\"'-avrL --progress'\\\""
    host: "Host to upload to. Overrides [server][host] in the\\ngroup config file. (default: -)"
    user: "User for host. Overrides [server][user] in the group\\nconfig file. (default: -)"
    hub_remote: "Remote filename for the top-level hub file. Overrides\\n[server][hub_remote] in the config file. (default: -)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}