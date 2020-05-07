version 1.0

task GffutilsCliParents {
  input {
    String limitLimit
    String excludeExclude
    Boolean excludeExcludeSelf
    String? dbDb
    String? idsIds
  }
  command <<<
    gffutils-cli parents \
      ~{dbDb} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--exclude-self" false="" excludeExcludeSelf} \
      ~{idsIds}
  >>>
}