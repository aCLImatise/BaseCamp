version 1.0

task SeqclusterInstall {
  input {
    Boolean? upgrade
    String? data
    String? tools
  }
  command <<<
    seqcluster_install \
      ~{if (upgrade) then "--upgrade" else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(tools) then ("--tools " +  '"' + tools + '"') else ""}
  >>>
  parameter_meta {
    upgrade: ""
    data: ""
    tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}