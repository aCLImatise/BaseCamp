version 1.0

task EbisearchGetDomainsOPTIONS {
  input {
    File fileFile
  }
  command <<<
    ebisearch get_domains OPTIONS \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}