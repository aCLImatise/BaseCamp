version 1.0

task Pyega3Fetch {
  input {
    Int? reference_name
    Int? reference_md_five
    Int? start
    Int? end
    String? format
    Int? max_retries
    Int? retry_wait
    File? save_to
  }
  command <<<
    pyega3 fetch \
      ~{if defined(reference_name) then ("--reference-name " +  '"' + reference_name + '"') else ""} \
      ~{if defined(reference_md_five) then ("--reference-md5 " +  '"' + reference_md_five + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(max_retries) then ("--max-retries " +  '"' + max_retries + '"') else ""} \
      ~{if defined(retry_wait) then ("--retry-wait " +  '"' + retry_wait + '"') else ""} \
      ~{if (save_to) then "--saveto" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_name: "The reference sequence name, for example 'chr1', '1',\\nor 'chrX'. If unspecified, all data is returned."
    reference_md_five: "The MD5 checksum uniquely representing the requested\\nreference sequence as a lower-case hexadecimal string,\\ncalculated as the MD5 of the upper-case sequence\\nexcluding all whitespace characters."
    start: "The start position of the range on the reference,\\n0-based, inclusive. If specified, reference-name or\\nreference-md5 must also be specified."
    end: "The end position of the range on the reference,\\n0-based exclusive. If specified, reference-name or\\nreference-md5 must also be specified."
    format: "The format of data to request."
    max_retries: "The maximum number of times to retry a failed\\ntransfer. Any negative number means infinite number of\\nretries."
    retry_wait: "The number of seconds to wait before retrying a failed\\ntransfer."
    save_to: "[SAVETO]     Output file(for files)/output dir(for datasets)"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}