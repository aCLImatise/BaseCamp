version 1.0

task Htsget {
  input {
    Boolean? verbose
    String? format
    String? reference_name
    String? reference_md_five
    String? start
    String? end
    String? output_file_path
    Int? max_retries
    String? retry_wait
    String? timeout
    String? bearer_token
    Boolean? v
    String url
  }
  command <<<
    htsget \
      ~{url} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(reference_name) then ("--reference-name " +  '"' + reference_name + '"') else ""} \
      ~{if defined(reference_md_five) then ("--reference-md5 " +  '"' + reference_md_five + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(max_retries) then ("--max-retries " +  '"' + max_retries + '"') else ""} \
      ~{if defined(retry_wait) then ("--retry-wait " +  '"' + retry_wait + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(bearer_token) then ("--bearer-token " +  '"' + bearer_token + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    verbose: "Increase verbosity."
    format: "The format of data to request."
    reference_name: "The reference sequence name, for example 'chr1', '1', or 'chrX'. If unspecified, all data is returned."
    reference_md_five: "The MD5 checksum uniquely representing the requested reference sequence as a lower-case hexadecimal string, calculated as the MD5 of the upper-case sequence excluding all whitespace characters."
    start: "The start position of the range on the reference, 0-based, inclusive. If specified, reference-name or reference-md5 must also be specified."
    end: "The end position of the range on the reference, 0-based exclusive. If specified, reference-name or reference-md5 must also be specified."
    output_file_path: "The output file path. Defaults to stdout. If output is to stdout, the max-retries is set to zero, since retries are not supported when writing to this stream"
    max_retries: "The maximum number of times to retry a failed transfer."
    retry_wait: "The number of seconds to wait before retrying a failed transfer."
    timeout: "The socket timeout for transfers."
    bearer_token: "The OAuth2 bearer token to present to the htsget ticket server."
    v: ""
    url: "The URL of the object to retrieve"
  }
}