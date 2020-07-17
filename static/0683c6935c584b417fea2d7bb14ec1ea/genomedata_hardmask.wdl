version 1.0

task GenomedataHardmask {
  input {
    Array[String] track_name
    String? hard_mask
    Boolean? no_close
    Boolean? dry_run
    Boolean? verbose
    String mask_file
    String gd_archive
  }
  command <<<
    genomedata-hardmask \
      ~{mask_file} \
      ~{gd_archive} \
      ~{if defined(track_name) then ("--trackname " +  '"' + track_name + '"') else ""} \
      ~{if defined(hard_mask) then ("--hardmask " +  '"' + hard_mask + '"') else ""} \
      ~{true="--no-close" false="" no_close} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    track_name: "Track(s) to be filtered (default: all)"
    hard_mask: "Specify a comparison operation on a value to mask out (e.g. \"lt0.5\" will mask all values less than 0.5). See the bash comparison operators for the two letter operations (default: all values masked)"
    no_close: "Do not close the genomedata archive after masking"
    dry_run: "Do not perform any masking. Useful with verbosity set to see what regions would be filtered"
    verbose: "Print status and diagnostic messages"
    mask_file: "input mask file"
    gd_archive: "genomedata archive"
  }
}