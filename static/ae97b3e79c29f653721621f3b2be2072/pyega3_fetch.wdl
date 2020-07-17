version 1.0

task Pyega3Fetch {
  input {
    String? reference_name
    String? reference_md_five
    String? start
    String? end
    String? format
    Int? max_retries
    String? retry_wait
    Boolean? save_to
    String identifier
  }
  command <<<
    pyega3 fetch \
      ~{identifier} \
      ~{if defined(reference_name) then ("--reference-name " +  '"' + reference_name + '"') else ""} \
      ~{if defined(reference_md_five) then ("--reference-md5 " +  '"' + reference_md_five + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(max_retries) then ("--max-retries " +  '"' + max_retries + '"') else ""} \
      ~{if defined(retry_wait) then ("--retry-wait " +  '"' + retry_wait + '"') else ""} \
      ~{true="--saveto" false="" save_to}
  >>>
  parameter_meta {
    reference_name: "The reference sequence name, for example 'chr1', '1', or 'chrX'. If unspecified, all data is returned."
    reference_md_five: "The MD5 checksum uniquely representing the requested reference sequence as a lower-case hexadecimal string, calculated as the MD5 of the upper-case sequence excluding all whitespace characters."
    start: "The start position of the range on the reference, 0-based, inclusive. If specified, reference-name or reference-md5 must also be specified."
    end: "The end position of the range on the reference, 0-based exclusive. If specified, reference-name or reference-md5 must also be specified."
    format: "The format of data to request."
    max_retries: "The maximum number of times to retry a failed transfer. Any negative number means infinite number of retries."
    retry_wait: "The number of seconds to wait before retrying a failed transfer."
    save_to: "[SAVETO]     Output file(for files)/output dir(for datasets)"
    identifier: "Id for dataset (e.g. EGAD00000000001) or file (e.g. EGAF12345678901)"
  }
}