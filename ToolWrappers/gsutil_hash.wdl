version 1.0

task GsutilHash {
  input {
    Boolean? calculate_crcc_hash
    Boolean? calculate_md_hash
  }
  command <<<
    gsutil hash \
      ~{if (calculate_crcc_hash) then "-c" else ""} \
      ~{if (calculate_md_hash) then "-m" else ""}
  >>>
  parameter_meta {
    calculate_crcc_hash: "Calculate a CRC32c hash for the file."
    calculate_md_hash: "Calculate a MD5 hash for the file."
  }
  output {
    File out_stdout = stdout()
  }
}