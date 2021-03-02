class: CommandLineTool
id: hca_dss_download.cwl
inputs:
- id: in_no_data
  doc: if using the CLI or pass the no_data=True argument if calling the download()
    API method.
  type: string?
  inputBinding:
    prefix: --no-data
- id: in_bundle_uuid
  doc: The uuid of the bundle to download
  type: string?
  inputBinding:
    prefix: --bundle-uuid
- id: in_replica
  doc: "the replica to download from. The supported replicas are: aws for Amazon Web\
    \ Services, and\ngcp for Google Cloud Platform. [aws, gcp]"
  type: string?
  inputBinding:
    prefix: --replica
- id: in_download_dir
  doc: The directory into which to download
  type: Directory?
  inputBinding:
    prefix: --download-dir
- id: in_metadata_filter
  doc: "One or more shell patterns against which all metadata files in the bundle\
    \ will\nbe matched case-sensitively. A file is considered a metadata file if the\n\
    indexed property in the manifest is set. If and only if a metadata file\nmatches\
    \ any of the patterns in metadata_files will it be downloaded."
  type: string[]
  inputBinding:
    prefix: --metadata-filter
- id: in_data_filter
  doc: "One or more shell patterns against which all data files in the bundle will\
    \ be\nmatched case-sensitively. A file is considered a data file if the indexed\
    \ property\nin the manifest is not set. The file will be downloaded only if a\
    \ data file matches\nany of the patterns in data_files will it be downloaded."
  type: string[]
  inputBinding:
    prefix: --data-filter
- id: in_no_metadata
  doc: Exclude metadata files. Cannot be set when --metadata-filter is also set.
  type: boolean?
  inputBinding:
    prefix: --no-metadata
- id: in_num_retries
  doc: "The initial quota of download failures to accept before exiting due to failures.\n\
    The number of retries increase and decrease as file chucks succeed and fail."
  type: long?
  inputBinding:
    prefix: --num-retries
- id: in_min_delay_seconds
  doc: "The minimum number of seconds to wait in between retries.\n"
  type: long?
  inputBinding:
    prefix: --min-delay-seconds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- download
