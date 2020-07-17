version 1.0

task Csplit {
  input {
    String? suffix_format
    String? prefix
    Boolean? keep_files
    Boolean? suppress_matched
    String? digits
    String? silent
    String? elide_empty_files
    String? option
  }
  command <<<
    csplit \
      ~{option} \
      ~{if defined(suffix_format) then ("--suffix-format " +  '"' + suffix_format + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--keep-files" false="" keep_files} \
      ~{true="--suppress-matched" false="" suppress_matched} \
      ~{if defined(digits) then ("--digits " +  '"' + digits + '"') else ""} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(elide_empty_files) then ("--elide-empty-files " +  '"' + elide_empty_files + '"') else ""}
  >>>
  parameter_meta {
    suffix_format: "use sprintf FORMAT instead of %02d"
    prefix: "use PREFIX instead of 'xx'"
    keep_files: "do not remove output files on errors"
    suppress_matched: "suppress the lines matching PATTERN"
    digits: "use specified number of digits instead of 2"
    silent: "not print counts of output file sizes"
    elide_empty_files: "empty output files"
    option: ""
  }
}