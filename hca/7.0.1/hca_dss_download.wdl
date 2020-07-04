version 1.0

task HcaDssDownload {
  input {
    String? bundle_uuid
    String? replica
    String? download_dir
    Array[String] metadata_filter
    Array[String] data_filter
    Boolean? no_metadata
    Boolean? no_data
    String? num_retries
    Int? min_delay_seconds
  }
  command <<<
    hca dss download \
      ~{if defined(bundle_uuid) then ("--bundle-uuid " +  '"' + bundle_uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""} \
      ~{if defined(metadata_filter) then ("--metadata-filter " +  '"' + metadata_filter + '"') else ""} \
      ~{if defined(data_filter) then ("--data-filter " +  '"' + data_filter + '"') else ""} \
      ~{true="--no-metadata" false="" no_metadata} \
      ~{true="--no-data" false="" no_data} \
      ~{if defined(num_retries) then ("--num-retries " +  '"' + num_retries + '"') else ""} \
      ~{if defined(min_delay_seconds) then ("--min-delay-seconds " +  '"' + min_delay_seconds + '"') else ""}
  >>>
  parameter_meta {
    bundle_uuid: "The uuid of the bundle to download"
    replica: "the replica to download from. The supported replicas are: aws for Amazon Web Services, and gcp for Google Cloud Platform. [aws, gcp]"
    download_dir: "The directory into which to download"
    metadata_filter: "One or more shell patterns against which all metadata files in the bundle will be matched case-sensitively. A file is considered a metadata file if the indexed property in the manifest is set. If and only if a metadata file matches any of the patterns in metadata_files will it be downloaded."
    data_filter: "One or more shell patterns against which all data files in the bundle will be matched case-sensitively. A file is considered a data file if the indexed property in the manifest is not set. The file will be downloaded only if a data file matches any of the patterns in data_files will it be downloaded."
    no_metadata: "Exclude metadata files. Cannot be set when --metadata-filter is also set."
    no_data: "Exclude data files. Cannot be set when --data-filter is also set."
    num_retries: "The initial quota of download failures to accept before exiting due to failures. The number of retries increase and decrease as file chucks succeed and fail."
    min_delay_seconds: "The minimum number of seconds to wait in between retries."
  }
}