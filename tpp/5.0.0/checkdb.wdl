version 1.0

task Checkdb {
  input {
    Boolean? verbose_reporting
    Boolean? write_sha_checksum
    String fast_a_dot_database
  }
  command <<<
    checkdb \
      ~{fast_a_dot_database} \
      ~{true="-V" false="" verbose_reporting} \
      ~{true="-N" false="" write_sha_checksum}
  >>>
  parameter_meta {
    verbose_reporting: "verbose reporting"
    write_sha_checksum: "do not write .check (SHA1 checksum) file"
    fast_a_dot_database: ""
  }
}