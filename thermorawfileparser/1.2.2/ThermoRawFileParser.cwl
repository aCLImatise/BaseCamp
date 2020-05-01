#!/usr/bin/env cwl-runner

baseCommand:
- ThermoRawFileParser.sh
class: CommandLineTool
cwlVersion: v1.0
id: thermorawfileparser.sh
inputs:
- doc: The raw file input (Required). Specify this or an input directory -d.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The directory containing the raw files (Required). Specify this or an input
    raw file -i.
  id: input_directory
  inputBinding:
    prefix: --input_directory
  type: string
- doc: The output directory. Specify this or an output file -b. Specifying neither
    writes to the input directory.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output file. Specify this or an output directory -o. Specifying neither
    writes to the input directory.
  id: output_file
  inputBinding:
    prefix: --output_file
  type: string
- doc: 'The spectra output format: 0 for MGF, 1 for mzML, 2 for indexed mzML, 3 for
    Parquet. Defaults to mzML if no format is specified.'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: 'The metadata output format: 0 for JSON, 1 for TXT.'
  id: metadata
  inputBinding:
    prefix: --metadata
  type: string
- doc: The metadata output file. By default the metadata file is written to the output
    directory.
  id: metadata_output_file
  inputBinding:
    prefix: --metadata_output_file
  type: string
- doc: GZip the output file.
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Don't use the peak picking provided by the native Thermo library. By default
    peak picking is enabled.
  id: no_peak_picking
  inputBinding:
    prefix: --noPeakPicking
  type: boolean
- doc: Don't use zlib compression for the m/z ratios and intensities. By default zlib
    compression is enabled.
  id: no_zlib_compression
  inputBinding:
    prefix: --noZlibCompression
  type: boolean
- doc: 'Optional logging level: 0 for silent, 1 for verbose.'
  id: logging
  inputBinding:
    prefix: --logging
  type: string
- doc: Ignore missing properties by the instrument.
  id: ignore_instrument_errors
  inputBinding:
    prefix: --ignoreInstrumentErrors
  type: boolean
- doc: '[=VALUE]       Optional property to write directly the data into S3 Storage.'
  id: s3_url
  inputBinding:
    prefix: --s3_url
  type: boolean
- doc: '[=VALUE] Optional key for the S3 bucket to write the file output.'
  id: s3_access_key_id
  inputBinding:
    prefix: --s3_accesskeyid
  type: boolean
- doc: '[=VALUE] Optional key for the S3 bucket to write the file output.'
  id: s3_secret_accesskey
  inputBinding:
    prefix: --s3_secretaccesskey
  type: boolean
- doc: '[=VALUE] S3 bucket name'
  id: s3_bucket_name
  inputBinding:
    prefix: --s3_bucketName
  type: boolean
