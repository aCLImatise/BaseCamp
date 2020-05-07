version 1.0

task AnsibleDoc {
  input {
    String moduleModulePath
    Boolean listList
    Boolean snippetSnippet
    Boolean vV
    String? moduleModule
  }
  command <<<
    ansible-doc \
      ~{moduleModule} \
      ~{if defined(moduleModulePath) then ("--module-path " +  '"' + moduleModulePath + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{true="--snippet" false="" snippetSnippet} \
      ~{true="-v" false="" vV}
  >>>
}