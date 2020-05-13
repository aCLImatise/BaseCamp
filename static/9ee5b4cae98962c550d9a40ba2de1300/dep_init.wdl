version 1.0

task DepInit {
  input {
    String tagsTags
    String defaultDefault
    String nonNonSemVer
    Boolean goGoPath
    Boolean noNoExamples
    Boolean skipSkipTools
    Boolean vV
    String? rootRoot
  }
  command <<<
    dep init \
      ~{rootRoot} \
      ~{if defined(tagsTags) then ("- Tags " +  '"' + tagsTags + '"') else ""} \
      ~{if defined(defaultDefault) then ("- Default " +  '"' + defaultDefault + '"') else ""} \
      ~{if defined(nonNonSemVer) then ("- Non-semver " +  '"' + nonNonSemVer + '"') else ""} \
      ~{true="-gopath" false="" goGoPath} \
      ~{true="-no-examples" false="" noNoExamples} \
      ~{true="-skip-tools" false="" skipSkipTools} \
      ~{true="-v" false="" vV}
  >>>
}