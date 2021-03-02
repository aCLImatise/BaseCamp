version 1.0

task ThermoRawFileParsersh {
  input {
    File? raw_file_input
    File? input_directory
    File? output_directory_specify
    File? output_file
    Int? format
    Int? metadata
    File? metadata_output_file
    File? gzip
    Boolean? no_peak_picking
    Boolean? no_zlib_compression
    Int? logging
    Boolean? s_three_url
    File? s_three_access_key_id
    File? s_three_secret_accesskey
    Boolean? s_three_bucket_name
    String verbose_dot
  }
  command <<<
    ThermoRawFileParser_sh \
      ~{verbose_dot} \
      ~{if defined(raw_file_input) then ("--input " +  '"' + raw_file_input + '"') else ""} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_directory_specify) then ("--output " +  '"' + output_directory_specify + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(metadata_output_file) then ("--metadata_output_file " +  '"' + metadata_output_file + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (no_peak_picking) then "--noPeakPicking" else ""} \
      ~{if (no_zlib_compression) then "--noZlibCompression" else ""} \
      ~{if defined(logging) then ("--logging " +  '"' + logging + '"') else ""} \
      ~{if (s_three_url) then "--s3_url" else ""} \
      ~{if (s_three_access_key_id) then "--s3_accesskeyid" else ""} \
      ~{if (s_three_secret_accesskey) then "--s3_secretaccesskey" else ""} \
      ~{if (s_three_bucket_name) then "--s3_bucketName" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    raw_file_input: "The raw file input (Required). Specify this or an\\ninput directory -d."
    input_directory: "The directory containing the raw files (Required).\\nSpecify this or an input raw file -i."
    output_directory_specify: "The output directory. Specify this or an output\\nfile -b. Specifying neither writes to the input\\ndirectory."
    output_file: "The output file. Specify this or an output\\ndirectory -o. Specifying neither writes to the\\ninput directory."
    format: "The spectra output format: 0 for MGF, 1 for mzML,\\n2 for indexed mzML, 3 for Parquet. Defaults to\\nmzML if no format is specified."
    metadata: "The metadata output format: 0 for JSON, 1 for TXT."
    metadata_output_file: "The metadata output file. By default the metadata\\nfile is written to the output directory."
    gzip: "GZip the output file."
    no_peak_picking: "Don't use the peak picking provided by the native\\nThermo library. By default peak picking is\\nenabled."
    no_zlib_compression: "Don't use zlib compression for the m/z ratios and\\nintensities. By default zlib compression is\\nenabled."
    logging: "Optional logging level: 0 for silent, 1 for"
    s_three_url: "[=VALUE]       Optional property to write directly the data into\\nS3 Storage."
    s_three_access_key_id: "[=VALUE]\\nOptional key for the S3 bucket to write the file\\noutput."
    s_three_secret_accesskey: "[=VALUE]\\nOptional key for the S3 bucket to write the file\\noutput."
    s_three_bucket_name: "[=VALUE]\\nS3 bucket name\\n"
    verbose_dot: "-e, --ignoreInstrumentErrors"
  }
  output {
    File out_stdout = stdout()
    File out_metadata_output_file = "${in_metadata_output_file}"
    File out_gzip = "${in_gzip}"
    File out_s_three_access_key_id = "${in_s_three_access_key_id}"
    File out_s_three_secret_accesskey = "${in_s_three_secret_accesskey}"
  }
}