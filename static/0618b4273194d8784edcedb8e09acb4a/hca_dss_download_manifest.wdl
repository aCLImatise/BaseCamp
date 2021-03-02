version 1.0

task HcaDssDownloadmanifest {
  input {
    File? manifest
    String? replica
    String? layout
    Boolean? no_metadata
    Boolean? no_data
    Int? num_retries
    Int? min_delay_seconds
    Directory? download_dir
  }
  command <<<
    hca dss download_manifest \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{if (no_metadata) then "--no-metadata" else ""} \
      ~{if (no_data) then "--no-data" else ""} \
      ~{if defined(num_retries) then ("--num-retries " +  '"' + num_retries + '"') else ""} \
      ~{if defined(min_delay_seconds) then ("--min-delay-seconds " +  '"' + min_delay_seconds + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    manifest: "The path to a TSV (tab-separated values) file listing files to download. If the directory\\nfor download already contains the manifest, the manifest will be overwritten to include a column with paths\\ninto the filestore."
    replica: "The replica from which to download. The supported replicas are: aws for Amazon Web\\nServices, and gcp for Google Cloud Platform. [aws, gcp]"
    layout: "The layout of the downloaded files. Currently two options are supported, 'none' (the\\ndefault), and 'bundle'."
    no_metadata: "Exclude metadata files. Cannot be set when --metadata-filter is also set."
    no_data: "Exclude data files. Cannot be set when --data-filter is also set."
    num_retries: "The initial quota of download failures to accept before exiting due to\\nfailures. The number of retries increase and decrease as file chucks succeed and fail."
    min_delay_seconds: "The minimum number of seconds to wait in between retries for downloading any\\nfile"
    download_dir: "The directory into which to download\\n"
  }
  output {
    File out_stdout = stdout()
  }
}