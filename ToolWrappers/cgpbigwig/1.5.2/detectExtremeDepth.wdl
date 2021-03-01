version 1.0

task DetectExtremeDepth {
  input {
    Boolean? bigwig
    Boolean? folder_send_output
    Boolean? ref
    Boolean? sd
    Boolean? decode
  }
  command <<<
    detectExtremeDepth \
      ~{if (bigwig) then "--bigwig" else ""} \
      ~{if (folder_send_output) then "--output" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (sd) then "--sd" else ""} \
      ~{if (decode) then "--decode" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0"
  }
  parameter_meta {
    bigwig: "[file]     BigWig file path."
    folder_send_output: "[dir]      Folder to send output to\\n- named as input file with '.tab' extension"
    ref: "[str]         Restrict to this reference (mainly for testing)\\n- without 'chr' prefix, will test with and without the 'chr' for you.\\n- if '-r' defined '.{val}' will prefix '.bed'"
    sd: "[int]          Number of standard deviations above mean for group to be included [12]."
    decode: "[str]      Decode -r to chromosome names (do not include 'chr')\\ne.g. -d 23:X -d 24:Y -d 25:MT"
  }
  output {
    File out_stdout = stdout()
  }
}