version 1.0

task Bismark2summary {
  input {
    File? oslash_basename
    String? title
  }
  command <<<
    bismark2summary \
      ~{if defined(oslash_basename) then ("-o/--basename " +  '"' + oslash_basename + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    oslash_basename: "Basename of the output file (optional). Generate a text file with all relevant extracted values ('basename.txt') as well as an HTML report ('basename.html'). If not specified explicitly, the the basename is 'bismark_summary_report'."
    title: "Optional HTML report title; use --title \"speech marks for text with spaces\". Default:  'Bismark Summary Report'.                           "
  }
}