version 1.0

task SeqclusterInstall {
  input {
    String? tools
    File? data
    Boolean? upgrade
  }
  command <<<
    seqcluster_install \
      ~{if defined(tools) then ("--tools " +  '"' + tools + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if (upgrade) then "--upgrade" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tools: "install tools"
    data: "path install data"
    upgrade: "upgrade seqcluster"
  }
  output {
    File out_stdout = stdout()
  }
}