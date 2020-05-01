version 1.0

task FilterBam {
  input {
    String excludeExcludeReadGroup
  }
  command <<<
    filter-bam \
      ~{if defined(excludeExcludeReadGroup) then ("--exclude_readgroup " +  '"' + excludeExcludeReadGroup + '"') else ""}
  >>>
}