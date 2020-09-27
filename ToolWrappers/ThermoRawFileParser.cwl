class: CommandLineTool
id: ThermoRawFileParser.cwl
inputs:
- id: in_input
  doc: "The raw file input (Required). Specify this or an\ninput directory -d."
  type: File
  inputBinding:
    prefix: --input
- id: in_input_directory
  doc: "The directory containing the raw files (Required).\nSpecify this or an input\
    \ raw file -i."
  type: File
  inputBinding:
    prefix: --input_directory
- id: in_output
  doc: "The output directory. Specify this or an output\nfile -b. Specifying neither\
    \ writes to the input\ndirectory."
  type: File
  inputBinding:
    prefix: --output
- id: in_output_file
  doc: "The output file. Specify this or an output\ndirectory -o. Specifying neither\
    \ writes to the\ninput directory."
  type: File
  inputBinding:
    prefix: --output_file
- id: in_format
  doc: "The spectra output format: 0 for MGF, 1 for mzML,\n2 for indexed mzML, 3 for\
    \ Parquet. Defaults to\nmzML if no format is specified."
  type: long
  inputBinding:
    prefix: --format
- id: in_metadata
  doc: 'The metadata output format: 0 for JSON, 1 for TXT.'
  type: long
  inputBinding:
    prefix: --metadata
- id: in_metadata_output_file
  doc: "The metadata output file. By default the metadata\nfile is written to the\
    \ output directory."
  type: File
  inputBinding:
    prefix: --metadata_output_file
- id: in_gzip
  doc: GZip the output file.
  type: File
  inputBinding:
    prefix: --gzip
- id: in_no_peak_picking
  doc: "Don't use the peak picking provided by the native\nThermo library. By default\
    \ peak picking is\nenabled."
  type: boolean
  inputBinding:
    prefix: --noPeakPicking
- id: in_no_zlib_compression
  doc: "Don't use zlib compression for the m/z ratios and\nintensities. By default\
    \ zlib compression is\nenabled."
  type: boolean
  inputBinding:
    prefix: --noZlibCompression
- id: in_logging
  doc: 'Optional logging level: 0 for silent, 1 for'
  type: long
  inputBinding:
    prefix: --logging
- id: in_s_three_url
  doc: "[=VALUE]       Optional property to write directly the data into\nS3 Storage."
  type: boolean
  inputBinding:
    prefix: --s3_url
- id: in_s_three_access_key_id
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File
  inputBinding:
    prefix: --s3_accesskeyid
- id: in_s_three_secret_accesskey
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File
  inputBinding:
    prefix: --s3_secretaccesskey
- id: in_s_three_bucket_name
  doc: "[=VALUE]\nS3 bucket name\n"
  type: boolean
  inputBinding:
    prefix: --s3_bucketName
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_metadata_output_file
  doc: "The metadata output file. By default the metadata\nfile is written to the\
    \ output directory."
  type: File
  outputBinding:
    glob: $(inputs.in_metadata_output_file)
- id: out_gzip
  doc: GZip the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_gzip)
- id: out_s_three_access_key_id
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File
  outputBinding:
    glob: $(inputs.in_s_three_access_key_id)
- id: out_s_three_secret_accesskey
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File
  outputBinding:
    glob: $(inputs.in_s_three_secret_accesskey)
cwlVersion: v1.1
baseCommand:
- ThermoRawFileParser
