version 1.0

task PubmlstList {
  input {
    String patternPattern
    String excludeExcludePattern
    Boolean namesNamesOnly
  }
  command <<<
    pubmlst_list \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(excludeExcludePattern) then ("--exclude_pattern " +  '"' + excludeExcludePattern + '"') else ""} \
      ~{true="--names_only" false="" namesNamesOnly}
  >>>
}