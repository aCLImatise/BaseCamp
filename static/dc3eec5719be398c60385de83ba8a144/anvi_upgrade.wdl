version 1.0

task Anviupgrade {
  input {
    String? repository
  }
  command <<<
    anvi_upgrade \
      ~{if defined(repository) then ("--repository " +  '"' + repository + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    repository: "Source repository to download releases, currently only\\nGithub is supported. Enter in 'merenlab/anvio' format.\\n(default: merenlab/anvio)"
  }
  output {
    File out_stdout = stdout()
  }
}