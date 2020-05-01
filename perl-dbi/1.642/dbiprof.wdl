version 1.0

task Dbiprof {
  input {
    String numberNumber
    String sortSort
    Boolean reverseReverse
    String matchMatch
    String excludeExclude
    Boolean caseCaseSensitive
    Boolean deleteDelete
    Boolean versionVersion
  }
  command <<<
    dbiprof \
      ~{if defined(numberNumber) then ("-number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(sortSort) then ("-sort " +  '"' + sortSort + '"') else ""} \
      ~{true="-reverse" false="" reverseReverse} \
      ~{if defined(matchMatch) then ("-match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(excludeExclude) then ("-exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="-case_sensitive" false="" caseCaseSensitive} \
      ~{true="-delete" false="" deleteDelete} \
      ~{true="-version" false="" versionVersion}
  >>>
}