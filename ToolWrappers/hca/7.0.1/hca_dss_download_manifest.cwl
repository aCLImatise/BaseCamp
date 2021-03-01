class: CommandLineTool
id: hca_dss_download_manifest.cwl
inputs:
- id: in_manifest
  doc: "The path to a TSV (tab-separated values) file listing files to download. If\
    \ the directory\nfor download already contains the manifest, the manifest will\
    \ be overwritten to include a column with paths\ninto the filestore."
  type: File?
  inputBinding:
    prefix: --manifest
- id: in_replica
  doc: "The replica from which to download. The supported replicas are: aws for Amazon\
    \ Web\nServices, and gcp for Google Cloud Platform. [aws, gcp]"
  type: string?
  inputBinding:
    prefix: --replica
- id: in_layout
  doc: "The layout of the downloaded files. Currently two options are supported, 'none'\
    \ (the\ndefault), and 'bundle'."
  type: string?
  inputBinding:
    prefix: --layout
- id: in_no_metadata
  doc: Exclude metadata files. Cannot be set when --metadata-filter is also set.
  type: boolean?
  inputBinding:
    prefix: --no-metadata
- id: in_no_data
  doc: Exclude data files. Cannot be set when --data-filter is also set.
  type: boolean?
  inputBinding:
    prefix: --no-data
- id: in_num_retries
  doc: "The initial quota of download failures to accept before exiting due to\nfailures.\
    \ The number of retries increase and decrease as file chucks succeed and fail."
  type: long?
  inputBinding:
    prefix: --num-retries
- id: in_min_delay_seconds
  doc: "The minimum number of seconds to wait in between retries for downloading any\n\
    file"
  type: long?
  inputBinding:
    prefix: --min-delay-seconds
- id: in_download_dir
  doc: "The directory into which to download\n"
  type: Directory?
  inputBinding:
    prefix: --download-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- download-manifest
