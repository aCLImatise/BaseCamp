version 1.0

task ThermoRawFileParser.sh {
  input {
    String? raw_file_input
    String? input_directory
    String? output_directory_specify
    String? output_file
    String? format
    String? metadata
    String? metadata_output_file
    Boolean? gzip
    Boolean? no_peak_picking
    Boolean? no_zlib_compression
    String? logging
    Boolean? ignore_instrument_errors
    Boolean? s_three_url
    Boolean? s_three_access_key_id
    Boolean? s_three_secret_accesskey
    Boolean? s_three_bucket_name
  }
  command <<<
    ThermoRawFileParser.sh \
      ~{if defined(raw_file_input) then ("--input " +  '"' + raw_file_input + '"') else ""} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_directory_specify) then ("--output " +  '"' + output_directory_specify + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(metadata_output_file) then ("--metadata_output_file " +  '"' + metadata_output_file + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--noPeakPicking" false="" no_peak_picking} \
      ~{true="--noZlibCompression" false="" no_zlib_compression} \
      ~{if defined(logging) then ("--logging " +  '"' + logging + '"') else ""} \
      ~{true="--ignoreInstrumentErrors" false="" ignore_instrument_errors} \
      ~{true="--s3_url" false="" s_three_url} \
      ~{true="--s3_accesskeyid" false="" s_three_access_key_id} \
      ~{true="--s3_secretaccesskey" false="" s_three_secret_accesskey} \
      ~{true="--s3_bucketName" false="" s_three_bucket_name}
  >>>
  parameter_meta {
    raw_file_input: "The raw file input (Required). Specify this or an input directory -d."
    input_directory: "The directory containing the raw files (Required). Specify this or an input raw file -i."
    output_directory_specify: "The output directory. Specify this or an output file -b. Specifying neither writes to the input directory."
    output_file: "The output file. Specify this or an output directory -o. Specifying neither writes to the input directory."
    format: "The spectra output format: 0 for MGF, 1 for mzML, 2 for indexed mzML, 3 for Parquet. Defaults to mzML if no format is specified."
    metadata: "The metadata output format: 0 for JSON, 1 for TXT."
    metadata_output_file: "The metadata output file. By default the metadata file is written to the output directory."
    gzip: "GZip the output file."
    no_peak_picking: "Don't use the peak picking provided by the native Thermo library. By default peak picking is enabled."
    no_zlib_compression: "Don't use zlib compression for the m/z ratios and intensities. By default zlib compression is enabled."
    logging: "Optional logging level: 0 for silent, 1 for verbose."
    ignore_instrument_errors: "Ignore missing properties by the instrument."
    s_three_url: "[=VALUE]       Optional property to write directly the data into S3 Storage."
    s_three_access_key_id: "[=VALUE] Optional key for the S3 bucket to write the file output."
    s_three_secret_accesskey: "[=VALUE] Optional key for the S3 bucket to write the file output."
    s_three_bucket_name: "[=VALUE] S3 bucket name"
  }
}