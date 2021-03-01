version 1.0

task Csplit {
  input {
    Int? suffix_format
    String? prefix
    Boolean? keep_files
    Boolean? suppress_matched
    Int? digits
    File? silent
    Boolean? elide_empty_files
    Int integer
  }
  command <<<
    csplit \
      ~{integer} \
      ~{if defined(suffix_format) then ("--suffix-format " +  '"' + suffix_format + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (keep_files) then "--keep-files" else ""} \
      ~{if (suppress_matched) then "--suppress-matched" else ""} \
      ~{if defined(digits) then ("--digits " +  '"' + digits + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (elide_empty_files) then "--elide-empty-files" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    suffix_format: "use sprintf FORMAT instead of %02d"
    prefix: "use PREFIX instead of 'xx'"
    keep_files: "do not remove output files on errors"
    suppress_matched: "suppress the lines matching PATTERN"
    digits: "use specified number of digits instead of 2"
    silent: "do not print counts of output file sizes"
    elide_empty_files: "remove empty output files"
    integer: "copy up to but not including specified line number"
  }
  output {
    File out_stdout = stdout()
    File out_silent = "${in_silent}"
  }
}