version 1.0

task HcaDssDownloadCollection {
  input {
    String? uuid
    String? replica
    String? download_dir
  }
  command <<<
    hca dss download-collection \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""}
  >>>
  parameter_meta {
    uuid: "The uuid of the collection to download"
    replica: "the replica to download from. The supported replicas are: aws for Amazon Web Services, and gcp for Google Cloud Platform. [aws, gcp]"
    download_dir: "The directory into which to download"
  }
}