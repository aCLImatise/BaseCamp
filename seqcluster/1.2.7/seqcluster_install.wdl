version 1.0

task SeqclusterInstall {
  input {
    String? tools
    File? data
    Boolean? upgrade
    String? genomes
    String? aligners
  }
  command <<<
    seqcluster_install \
      ~{if defined(tools) then ("--tools " +  '"' + tools + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if (upgrade) then "--upgrade" else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(aligners) then ("--aligners " +  '"' + aligners + '"') else ""}
  >>>
  parameter_meta {
    tools: "install tools"
    data: "path install data"
    upgrade: "upgrade seqcluster"
    genomes: ""
    aligners: ""
  }
  output {
    File out_stdout = stdout()
  }
}