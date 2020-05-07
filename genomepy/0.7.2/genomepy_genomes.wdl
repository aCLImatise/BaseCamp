version 1.0

task GenomepyGenomes {
  input {
    String providerProvider
  }
  command <<<
    genomepy genomes \
      ~{if defined(providerProvider) then ("--provider " +  '"' + providerProvider + '"') else ""}
  >>>
}