version 1.0

task GenomepyGenomes {
  input {
    String? provider
  }
  command <<<
    genomepy genomes \
      ~{if defined(provider) then ("--provider " +  '"' + provider + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomepy:0.9.3--py_0"
  }
  parameter_meta {
    provider: "provider"
  }
  output {
    File out_stdout = stdout()
  }
}