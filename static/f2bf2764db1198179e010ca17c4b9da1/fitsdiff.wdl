version 1.0

task Fitsdiff {
  input {
    Boolean? quiet
    Int? num_diffs
    Int? difference_tolerance
    Int? relative_tolerance
    Int? absolute_tolerance
    Boolean? no_ignore_blanks
    Boolean? no_ignore_blank_cards
    Boolean? exact
    File? output_file
    String? ignore_keywords
    String? ignore_comments
    String? ignore_fields
  }
  command <<<
    fitsdiff \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(num_diffs) then ("--num-diffs " +  '"' + num_diffs + '"') else ""} \
      ~{if defined(difference_tolerance) then ("--difference-tolerance " +  '"' + difference_tolerance + '"') else ""} \
      ~{if defined(relative_tolerance) then ("--relative-tolerance " +  '"' + relative_tolerance + '"') else ""} \
      ~{if defined(absolute_tolerance) then ("--absolute-tolerance " +  '"' + absolute_tolerance + '"') else ""} \
      ~{if (no_ignore_blanks) then "--no-ignore-blanks" else ""} \
      ~{if (no_ignore_blank_cards) then "--no-ignore-blank-cards" else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(ignore_keywords) then ("--ignore-keywords " +  '"' + ignore_keywords + '"') else ""} \
      ~{if defined(ignore_comments) then ("--ignore-comments " +  '"' + ignore_comments + '"') else ""} \
      ~{if defined(ignore_fields) then ("--ignore-fields " +  '"' + ignore_fields + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Produce no output and just return a status code."
    num_diffs: "Max number of data differences (image pixel or table\\nelement) to report per extension (default 10)."
    difference_tolerance: "DEPRECATED. Alias for \\\"--relative-tolerance\\\".\\nDeprecated, provided for backward compatibility\\n(default none)."
    relative_tolerance: "The relative tolerance for comparison of two numbers,\\nspecifically two floating point numbers.  This applies\\nto data in both images and tables, and to floating\\npoint keyword values in headers (default none)."
    absolute_tolerance: "The absolute tolerance for comparison of two numbers,\\nspecifically two floating point numbers.  This applies\\nto data in both images and tables, and to floating\\npoint keyword values in headers (default none)."
    no_ignore_blanks: "Don't ignore trailing blanks (whitespace) in string\\nvalues.  Otherwise trailing blanks both in header\\nkeywords/values and in table column values) are not\\ntreated as significant i.e., without this option\\n'ABCDEF   ' and 'ABCDEF' are considered equivalent."
    no_ignore_blank_cards: "Don't ignore entirely blank cards in headers.\\nNormally fitsdiff does not consider blank cards when\\ncomparing headers, but this will ensure that even\\nblank cards match up."
    exact: "Report ALL differences, overriding command-line\\noptions and FITSDIFF_SETTINGS."
    output_file: "Output results to this file; otherwise results are\\nprinted to stdout."
    ignore_keywords: "Comma-separated list of keywords not to be compared.\\nKeywords may contain wildcard patterns.  To exclude\\nall keywords, use \\\"*\\\"; make sure to have double or\\nsingle quotes around the asterisk on the command-line."
    ignore_comments: "Comma-separated list of keywords whose comments will\\nnot be compared.  Wildcards may be used as with\\n--ignore-keywords."
    ignore_fields: "Comma-separated list of fields (i.e. columns) not to\\nbe compared.  All columns may be excluded using \\\"*\\\" as\\nwith --ignore-keywords."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}