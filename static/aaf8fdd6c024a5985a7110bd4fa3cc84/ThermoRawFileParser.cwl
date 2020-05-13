class: CommandLineTool
id: ThermoRawFileParser.sh.cwl
inputs:
- id: input
  doc: The raw file input (Required). Specify this or an input directory -d.
  type: string
  inputBinding:
    prefix: --input
- id: input_directory
  doc: The directory containing the raw files (Required). Specify this or an input
    raw file -i.
  type: string
  inputBinding:
    prefix: --input_directory
- id: output
  doc: The output directory. Specify this or an output file -b. Specifying neither
    writes to the input directory.
  type: string
  inputBinding:
    prefix: --output
- id: output_file
  doc: The output file. Specify this or an output directory -o. Specifying neither
    writes to the input directory.
  type: string
  inputBinding:
    prefix: --output_file
- id: format
  doc: 'The spectra output format: 0 for MGF, 1 for mzML, 2 for indexed mzML, 3 for
    Parquet. Defaults to mzML if no format is specified.'
  type: string
  inputBinding:
    prefix: --format
- id: metadata
  doc: 'The metadata output format: 0 for JSON, 1 for TXT.'
  type: string
  inputBinding:
    prefix: --metadata
- id: metadata_output_file
  doc: The metadata output file. By default the metadata file is written to the output
    directory.
  type: string
  inputBinding:
    prefix: --metadata_output_file
- id: gzip
  doc: GZip the output file.
  type: boolean
  inputBinding:
    prefix: --gzip
- id: no_peak_picking
  doc: Don't use the peak picking provided by the native Thermo library. By default
    peak picking is enabled.
  type: boolean
  inputBinding:
    prefix: --noPeakPicking
- id: no_zlib_compression
  doc: Don't use zlib compression for the m/z ratios and intensities. By default zlib
    compression is enabled.
  type: boolean
  inputBinding:
    prefix: --noZlibCompression
- id: logging
  doc: 'Optional logging level: 0 for silent, 1 for verbose.'
  type: string
  inputBinding:
    prefix: --logging
- id: ignore_instrument_errors
  doc: Ignore missing properties by the instrument.
  type: boolean
  inputBinding:
    prefix: --ignoreInstrumentErrors
- id: s3_url
  doc: '[=VALUE]       Optional property to write directly the data into S3 Storage.'
  type: boolean
  inputBinding:
    prefix: --s3_url
- id: s3_access_key_id
  doc: '[=VALUE] Optional key for the S3 bucket to write the file output.'
  type: boolean
  inputBinding:
    prefix: --s3_accesskeyid
- id: s3_secret_accesskey
  doc: '[=VALUE] Optional key for the S3 bucket to write the file output.'
  type: boolean
  inputBinding:
    prefix: --s3_secretaccesskey
- id: s3_bucket_name
  doc: '[=VALUE] S3 bucket name'
  type: boolean
  inputBinding:
    prefix: --s3_bucketName
outputs: []
cwlVersion: v1.1
baseCommand:
- ThermoRawFileParser.sh
