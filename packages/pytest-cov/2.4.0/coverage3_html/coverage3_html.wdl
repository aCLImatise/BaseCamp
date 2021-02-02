version 1.0

task Coverage3Html {
  input {
    Directory? directory
    Int? fail_under
    Boolean? ignore_errors
    Int? include
    Int? omit
    String? title
    Boolean? skip_covered
    String? debug
    File? rcfile
    String? modules
  }
  command <<<
    coverage3 html \
      ~{modules} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(fail_under) then ("--fail-under " +  '"' + fail_under + '"') else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(omit) then ("--omit " +  '"' + omit + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (skip_covered) then "--skip-covered" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(rcfile) then ("--rcfile " +  '"' + rcfile + '"') else ""}
  >>>
  parameter_meta {
    directory: "Write the output files to DIR."
    fail_under: "Exit with a status of 2 if the total coverage is less\\nthan MIN."
    ignore_errors: "Ignore errors while reading source files."
    include: ",PAT2,...\\nInclude only files whose paths match one of these\\npatterns. Accepts shell-style wildcards, which must be\\nquoted."
    omit: ",PAT2,...  Omit files whose paths match one of these patterns.\\nAccepts shell-style wildcards, which must be quoted."
    title: "A text string to use as the title on the HTML."
    skip_covered: "Skip files with 100% coverage."
    debug: "Debug options, separated by commas"
    rcfile: "Specify configuration file.  Defaults to '.coveragerc'"
    modules: ""
  }
  output {
    File out_stdout = stdout()
  }
}