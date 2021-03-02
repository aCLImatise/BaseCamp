version 1.0

task HamronizeResFinderResultsTabtxt {
  input {
    String ham_ron_ize
    String tool
    String options
  }
  command <<<
    hamronize ResFinder_results_tab_txt \
      ~{ham_ron_ize} \
      ~{tool} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hamronization:1.0.3--py_0"
  }
  parameter_meta {
    ham_ron_ize: ""
    tool: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}