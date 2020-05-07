version 1.0

task GenieBamView {
  input {
    String fileFilePath
    Boolean headerHeaderOnly
    Boolean humanHumanReadable
    Boolean includeIncludeHeader
    Int limitLimitReads
    String scopeScope
    String? flagsFlags
  }
  command <<<
    genie bam view \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{true="--headeronly" false="" headerHeaderOnly} \
      ~{true="--human-readable" false="" humanHumanReadable} \
      ~{true="--includeheader" false="" includeIncludeHeader} \
      ~{if defined(limitLimitReads) then ("--limitreads " +  '"' + limitLimitReads + '"') else ""} \
      ~{if defined(scopeScope) then ("--scope " +  '"' + scopeScope + '"') else ""}
  >>>
}