class: CommandLineTool
id: ../../../hca_dss_download.cwl
inputs:
- id: bundle_uuid
  doc: The uuid of the bundle to download
  type: string
  inputBinding:
    prefix: --bundle-uuid
- id: replica
  doc: 'the replica to download from. The supported replicas are: aws for Amazon Web
    Services, and gcp for Google Cloud Platform. [aws, gcp]'
  type: string
  inputBinding:
    prefix: --replica
- id: download_dir
  doc: The directory into which to download
  type: string
  inputBinding:
    prefix: --download-dir
- id: metadata_filter
  doc: One or more shell patterns against which all metadata files in the bundle will
    be matched case-sensitively. A file is considered a metadata file if the indexed
    property in the manifest is set. If and only if a metadata file matches any of
    the patterns in metadata_files will it be downloaded.
  type: string[]
  inputBinding:
    prefix: --metadata-filter
- id: data_filter
  doc: One or more shell patterns against which all data files in the bundle will
    be matched case-sensitively. A file is considered a data file if the indexed property
    in the manifest is not set. The file will be downloaded only if a data file matches
    any of the patterns in data_files will it be downloaded.
  type: string[]
  inputBinding:
    prefix: --data-filter
- id: no_metadata
  doc: Exclude metadata files. Cannot be set when --metadata-filter is also set.
  type: boolean
  inputBinding:
    prefix: --no-metadata
- id: no_data
  doc: Exclude data files. Cannot be set when --data-filter is also set.
  type: boolean
  inputBinding:
    prefix: --no-data
- id: num_retries
  doc: The initial quota of download failures to accept before exiting due to failures.
    The number of retries increase and decrease as file chucks succeed and fail.
  type: string
  inputBinding:
    prefix: --num-retries
- id: min_delay_seconds
  doc: The minimum number of seconds to wait in between retries.
  type: long
  inputBinding:
    prefix: --min-delay-seconds
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- download
