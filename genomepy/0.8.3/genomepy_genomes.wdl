version 1.0

task GenomepyGenomes {
  input {
    String? provider
  }
  command <<<
    genomepy genomes \
      ~{if defined(provider) then ("--provider " +  '"' + provider + '"') else ""}
  >>>
  parameter_meta {
    provider: "provider"
  }
  output {
    File out_stdout = stdout()
  }
}