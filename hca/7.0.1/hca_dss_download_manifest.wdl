version 1.0

task HcaDssDownloadManifest {
  input {
    String? manifest
    String? replica
    String? layout
    Boolean? no_metadata
    Boolean? no_data
    String? num_retries
    Int? min_delay_seconds
    String? download_dir
  }
  command <<<
    hca dss download-manifest \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{true="--no-metadata" false="" no_metadata} \
      ~{true="--no-data" false="" no_data} \
      ~{if defined(num_retries) then ("--num-retries " +  '"' + num_retries + '"') else ""} \
      ~{if defined(min_delay_seconds) then ("--min-delay-seconds " +  '"' + min_delay_seconds + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""}
  >>>
  parameter_meta {
    manifest: "The path to a TSV (tab-separated values) file listing files to download. If the directory for download already contains the manifest, the manifest will be overwritten to include a column with paths into the filestore."
    replica: "The replica from which to download. The supported replicas are: aws for Amazon Web Services, and gcp for Google Cloud Platform. [aws, gcp]"
    layout: "The layout of the downloaded files. Currently two options are supported, 'none' (the default), and 'bundle'."
    no_metadata: "Exclude metadata files. Cannot be set when --metadata-filter is also set."
    no_data: "Exclude data files. Cannot be set when --data-filter is also set."
    num_retries: "The initial quota of download failures to accept before exiting due to failures. The number of retries increase and decrease as file chucks succeed and fail."
    min_delay_seconds: "The minimum number of seconds to wait in between retries for downloading any file"
    download_dir: "The directory into which to download"
  }
}