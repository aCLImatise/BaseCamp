version 1.0

task Genomedatahardmask {
  input {
    Array[String] track_name
    Float? hard_mask
    Boolean? no_close
    Boolean? dry_run
    Boolean? verbose
    String mask_file
    String gd_archive
  }
  command <<<
    genomedata_hardmask \
      ~{mask_file} \
      ~{gd_archive} \
      ~{if defined(track_name) then ("--trackname " +  '"' + track_name + '"') else ""} \
      ~{if defined(hard_mask) then ("--hardmask " +  '"' + hard_mask + '"') else ""} \
      ~{if (no_close) then "--no-close" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
  }
  parameter_meta {
    track_name: "Track(s) to be filtered (default: all)"
    hard_mask: "Specify a comparison operation on a value to mask out\\n(e.g. \\\"lt0.5\\\" will mask all values less than 0.5). See\\nthe bash comparison operators for the two letter\\noperations (default: all values masked)"
    no_close: "Do not close the genomedata archive after masking"
    dry_run: "Do not perform any masking. Useful with verbosity set\\nto see what regions would be filtered"
    verbose: "Print status and diagnostic messages"
    mask_file: "input mask file"
    gd_archive: "genomedata archive"
  }
  output {
    File out_stdout = stdout()
  }
}