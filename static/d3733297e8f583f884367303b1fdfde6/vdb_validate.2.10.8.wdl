version 1.0

task Vdbvalidate2108 {
  input {
    Int? blob_crc
    String? referential_integrity
    String? consistency_check
    Boolean? exhaustive
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_validate_2_10_8 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(blob_crc) then ("--BLOB-CRC " +  '"' + blob_crc + '"') else ""} \
      ~{if defined(referential_integrity) then ("--REFERENTIAL-INTEGRITY " +  '"' + referential_integrity + '"') else ""} \
      ~{if defined(consistency_check) then ("--CONSISTENCY-CHECK " +  '"' + consistency_check + '"') else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    blob_crc: "Check blobs CRC32 (default: yes)"
    referential_integrity: "Check data referential integrity for\\ndatabases (default: yes)"
    consistency_check: "Deeply check data consistency for tables\\n(default: no)"
    exhaustive: "Continue checking object for all possible\\nerrors (default: false)"
    ngc: "path to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "vdb-validate.2.10.8 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}