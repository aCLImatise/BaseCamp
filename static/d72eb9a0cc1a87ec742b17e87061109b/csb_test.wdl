version 1.0

task CsbTest {
  input {
    String? type
    String? verbosity
    Boolean? update_files
    String? generated_resources
    String namespaces
  }
  command <<<
    csb-test \
      ~{namespaces} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--update-files" false="" update_files} \
      ~{if defined(generated_resources) then ("--generated-resources " +  '"' + generated_resources + '"') else ""}
  >>>
  parameter_meta {
    type: "Type of tests to load from each namespace (default=any)"
    verbosity: "Verbosity level passed to unittest.TextTestRunner (default=1)."
    update_files: "Force update of the test pickles in /tmp/tmp55avv5mq/lib/python3.8/site- packages/csb/test/data"
    generated_resources: "Generate, store and load additional test resources in this directory (default=/tmp/tmp55avv5mq/lib/python3.8/site- packages/csb/test/data)"
    namespaces: "An optional list of CSB test dotted namespaces, from which to load tests. '__main__' and '.' are interpreted as the current module. If a namespace ends with an asterisk '.*', all sub-packages will be scanned as well. Examples: \"csb.test.cases.bio.*\" \"csb.test.cases.bio.io\" \"csb.test.cases.bio.utils\" \".\")"
  }
}