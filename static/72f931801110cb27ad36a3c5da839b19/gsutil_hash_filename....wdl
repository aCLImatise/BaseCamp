version 1.0

task GsutilHashFilename... {
  input {
    Boolean? calculate_crcc_hash
    Boolean? calculate_md_hash
  }
  command <<<
    gsutil hash filename... \
      ~{true="-c" false="" calculate_crcc_hash} \
      ~{true="-m" false="" calculate_md_hash}
  >>>
  parameter_meta {
    calculate_crcc_hash: "Calculate a CRC32c hash for the file."
    calculate_md_hash: "Calculate a MD5 hash for the file."
  }
}