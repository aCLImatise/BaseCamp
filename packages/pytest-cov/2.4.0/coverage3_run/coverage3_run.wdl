version 1.0

task Coverage3Run {
  input {
    Boolean? append
    Boolean? branch
    Int? omit
    Boolean? py_lib
    Boolean? parallel_mode
    Int? source
    Boolean? timid
    String? debug
    File? rcfile
    String coverage_dot
    String multiprocessing_dot
    String quoted_dot
  }
  command <<<
    coverage3 run \
      ~{coverage_dot} \
      ~{multiprocessing_dot} \
      ~{quoted_dot} \
      ~{if (append) then "--append" else ""} \
      ~{if (branch) then "--branch" else ""} \
      ~{if defined(omit) then ("--omit " +  '"' + omit + '"') else ""} \
      ~{if (py_lib) then "--pylib" else ""} \
      ~{if (parallel_mode) then "--parallel-mode" else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (timid) then "--timid" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(rcfile) then ("--rcfile " +  '"' + rcfile + '"') else ""}
  >>>
  parameter_meta {
    append: "Append coverage data to .coverage, otherwise it starts\\nclean each time."
    branch: "Measure branch coverage in addition to statement"
    omit: ",PAT2,...  Omit files whose paths match one of these patterns.\\nAccepts shell-style wildcards, which must be quoted."
    py_lib: "Measure coverage even inside the Python installed\\nlibrary, which isn't done by default."
    parallel_mode: "Append the machine name, process id and random number\\nto the .coverage data file name to simplify collecting\\ndata from many processes."
    source: ",SRC2,...\\nA list of packages or directories of code to be\\nmeasured."
    timid: "Use a simpler but slower trace method.  Try this if\\nyou get seemingly impossible results!"
    debug: "Debug options, separated by commas"
    rcfile: "Specify configuration file.  Defaults to '.coveragerc'"
    coverage_dot: "--concurrency=LIB     Properly measure code using a concurrency library."
    multiprocessing_dot: "--include=PAT1,PAT2,..."
    quoted_dot: "-m, --module          <pyfile> is an importable Python module, not a script"
  }
  output {
    File out_stdout = stdout()
  }
}