version 1.0

task HcaDssDownloadcollection {
  input {
    String? uuid
    String? replica
    Directory? download_dir
  }
  command <<<
    hca dss download_collection \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uuid: "The uuid of the collection to download"
    replica: "the replica to download from. The supported\\nreplicas are: aws for Amazon Web Services, and gcp for\\nGoogle Cloud Platform. [aws, gcp]"
    download_dir: "The directory into which to download\\n"
  }
  output {
    File out_stdout = stdout()
  }
}