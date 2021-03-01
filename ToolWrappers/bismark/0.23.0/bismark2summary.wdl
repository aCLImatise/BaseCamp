version 1.0

task Bismark2summary {
  input {
    File? basename
    String? title
  }
  command <<<
    bismark2summary \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  parameter_meta {
    basename: "Basename of the output file (optional). Generate a text file with all relevant extracted values\\n('basename.txt') as well as an HTML report ('basename.html'). If not specified explicitly, the\\nthe basename is 'bismark_summary_report'."
    title: "Optional HTML report title; use --title \\\"speech marks for text with spaces\\\". Default:\\n'Bismark Summary Report'."
  }
  output {
    File out_stdout = stdout()
    File out_basename = "${in_basename}"
  }
}