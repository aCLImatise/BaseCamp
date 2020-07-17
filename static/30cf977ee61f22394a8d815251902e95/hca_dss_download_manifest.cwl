class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_download_manifest.cwl
inputs:
- id: manifest
  doc: The path to a TSV (tab-separated values) file listing files to download. If
    the directory for download already contains the manifest, the manifest will be
    overwritten to include a column with paths into the filestore.
  type: string
  inputBinding:
    prefix: --manifest
- id: replica
  doc: 'The replica from which to download. The supported replicas are: aws for Amazon
    Web Services, and gcp for Google Cloud Platform. [aws, gcp]'
  type: string
  inputBinding:
    prefix: --replica
- id: layout
  doc: The layout of the downloaded files. Currently two options are supported, 'none'
    (the default), and 'bundle'.
  type: string
  inputBinding:
    prefix: --layout
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
  doc: The minimum number of seconds to wait in between retries for downloading any
    file
  type: long
  inputBinding:
    prefix: --min-delay-seconds
- id: download_dir
  doc: The directory into which to download
  type: string
  inputBinding:
    prefix: --download-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- download-manifest
