version 1.0

task Csbtest {
  input {
    String? type
    Int? verbosity
    Boolean? update_files
    Directory? generated_resources
    String namespaces
  }
  command <<<
    csb_test \
      ~{namespaces} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (update_files) then "--update-files" else ""} \
      ~{if defined(generated_resources) then ("--generated-resources " +  '"' + generated_resources + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "Type of tests to load from each namespace\\n(default=any)"
    verbosity: "Verbosity level passed to unittest.TextTestRunner\\n(default=1)."
    update_files: "Force update of the test pickles in\\n/usr/local/lib/python3.6/site-packages/csb/test/data"
    generated_resources: "Generate, store and load additional test resources in\\nthis directory (default=/usr/local/lib/python3.6/site-\\npackages/csb/test/data)\\n"
    namespaces: "An optional list of CSB test dotted namespaces, from\\nwhich to load tests. '__main__' and '.' are\\ninterpreted as the current module. If a namespace ends\\nwith an asterisk '.*', all sub-packages will be\\nscanned as well. Examples: \\\"csb.test.cases.bio.*\\\"\\n\\\"csb.test.cases.bio.io\\\" \\\"csb.test.cases.bio.utils\\\"\\n\\\".\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}