class: CommandLineTool
id: ThermoRawFileParser.sh.cwl
inputs:
- id: in_input
  doc: "The raw file input (Required). Specify this or an\ninput directory -d."
  type: File?
  inputBinding:
    prefix: --input
- id: in_input_directory
  doc: "The directory containing the raw files (Required).\nSpecify this or an input\
    \ raw file -i."
  type: File?
  inputBinding:
    prefix: --input_directory
- id: in_output
  doc: "The output directory. Specify this or an output\nfile -b. Specifying neither\
    \ writes to the input\ndirectory."
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_file
  doc: "The output file. Specify this or an output\ndirectory -o. Specifying neither\
    \ writes to the\ninput directory."
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_stdout
  doc: "Write to standard output. Cannot be combined with\nfile or directory output.\
    \ Implies silent logging,\ni.e. logging level 0"
  type: File?
  inputBinding:
    prefix: --stdout
- id: in_format
  doc: "The spectra output format: 0 for MGF, 1 for mzML,\n2 for indexed mzML, 3 for\
    \ Parquet. Defaults to\nindexed mzML if no format is specified."
  type: long?
  inputBinding:
    prefix: --format
- id: in_metadata
  doc: 'The metadata output format: 0 for JSON, 1 for TXT.'
  type: long?
  inputBinding:
    prefix: --metadata
- id: in_metadata_output_file
  doc: "The metadata output file. By default the metadata\nfile is written to the\
    \ output directory."
  type: File?
  inputBinding:
    prefix: --metadata_output_file
- id: in_gzip
  doc: GZip the output file.
  type: File?
  inputBinding:
    prefix: --gzip
- id: in_no_peak_picking
  doc: "[=VALUE]\nDon't use the peak picking provided by the native\nThermo library.\
    \ By default peak picking is\nenabled. Optional argument allows disabling peak\n\
    peaking only for selected MS levels and should\nbe a comma-separated list of integers\
    \ (1,2,3)\nand/or intervals (1-3), open-end intervals (1-)\nare allowed"
  type: boolean?
  inputBinding:
    prefix: --noPeakPicking
- id: in_no_zlib_compression
  doc: "Don't use zlib compression for the m/z ratios and\nintensities. By default\
    \ zlib compression is\nenabled."
  type: boolean?
  inputBinding:
    prefix: --noZlibCompression
- id: in_all_detectors
  doc: 'Extract additional detector data: UV/PDA etc'
  type: boolean?
  inputBinding:
    prefix: --allDetectors
- id: in_logging
  doc: 'Optional logging level: 0 for silent, 1 for'
  type: long?
  inputBinding:
    prefix: --logging
- id: in_include_exception_data
  doc: reference and exception data
  type: string?
  inputBinding:
    prefix: --includeExceptionData
- id: in_ms_level
  doc: "Select MS levels (MS1, MS2, etc) included in the\noutput, should be a comma-separated\
    \ list of\nintegers (1,2,3) and/or intervals (1-3), open-\nend intervals (1-)\
    \ are allowed"
  type: long?
  inputBinding:
    prefix: --msLevel
- id: in_mgf_precursor
  doc: Include precursor scan number in MGF file TITLE
  type: boolean?
  inputBinding:
    prefix: --mgfPrecursor
- id: in_s_three_url
  doc: "[=VALUE]       Optional property to write directly the data into\nS3 Storage."
  type: boolean?
  inputBinding:
    prefix: --s3_url
- id: in_s_three_access_key_id
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File?
  inputBinding:
    prefix: --s3_accesskeyid
- id: in_s_three_secret_accesskey
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File?
  inputBinding:
    prefix: --s3_secretaccesskey
- id: in_s_three_bucket_name
  doc: "[=VALUE]\nS3 bucket name\n"
  type: boolean?
  inputBinding:
    prefix: --s3_bucketName
- id: in_verbose_dot
  doc: -e, --ignoreInstrumentErrors
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stdout
  doc: "Write to standard output. Cannot be combined with\nfile or directory output.\
    \ Implies silent logging,\ni.e. logging level 0"
  type: File?
  outputBinding:
    glob: $(inputs.in_stdout)
- id: out_metadata_output_file
  doc: "The metadata output file. By default the metadata\nfile is written to the\
    \ output directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_metadata_output_file)
- id: out_gzip
  doc: GZip the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip)
- id: out_s_three_access_key_id
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File?
  outputBinding:
    glob: $(inputs.in_s_three_access_key_id)
- id: out_s_three_secret_accesskey
  doc: "[=VALUE]\nOptional key for the S3 bucket to write the file\noutput."
  type: File?
  outputBinding:
    glob: $(inputs.in_s_three_secret_accesskey)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0
cwlVersion: v1.1
baseCommand:
- ThermoRawFileParser.sh
