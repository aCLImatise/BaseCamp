version 1.0

task Zipinfo {
  input {
    Boolean? short_unix_format
    Boolean? filenames_only_one
    Boolean? just_filenames_allow
    Boolean? verbose_multipage_format
    Boolean? print_zipfile_comment
    Boolean? be_caseinsensitive_output
    Boolean? exclude_filenames_follow
    Boolean? onetwosmlvchmttz
    File var_file
  }
  command <<<
    zipinfo \
      ~{var_file} \
      ~{if (short_unix_format) then "-s" else ""} \
      ~{if (filenames_only_one) then "-1" else ""} \
      ~{if (just_filenames_allow) then "-2" else ""} \
      ~{if (verbose_multipage_format) then "-v" else ""} \
      ~{if (print_zipfile_comment) then "-z" else ""} \
      ~{if (be_caseinsensitive_output) then "-C" else ""} \
      ~{if (exclude_filenames_follow) then "-x" else ""} \
      ~{if (onetwosmlvchmttz) then "-12smlvChMtTz" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unzip:6.0"
  }
  parameter_meta {
    short_unix_format: "short Unix \\\"ls -l\\\" format (def.)"
    filenames_only_one: "filenames ONLY, one per line       -m  medium Unix \\\"ls -l\\\" format"
    just_filenames_allow: "just filenames but allow -h/-t/-z  -l  long Unix \\\"ls -l\\\" format"
    verbose_multipage_format: "verbose, multi-page format"
    print_zipfile_comment: "print zipfile comment   -T  print file times in sortable decimal format"
    be_caseinsensitive_output: "be case-insensitive     -M  page output through built-in \\\"more\\\""
    exclude_filenames_follow: "exclude filenames that follow from listing"
    onetwosmlvchmttz: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}