version 1.0

task GenomepySearch {
  input {
    String? provider
    String term
  }
  command <<<
    genomepy search \
      ~{term} \
      ~{if defined(provider) then ("--provider " +  '"' + provider + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    provider: "provider"
    term: ""
  }
  output {
    File out_stdout = stdout()
  }
}