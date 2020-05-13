version 1.0

task GenomepySearchOPTIONS {
  input {
    String providerProvider
  }
  command <<<
    genomepy search OPTIONS \
      ~{if defined(providerProvider) then ("--provider " +  '"' + providerProvider + '"') else ""}
  >>>
}