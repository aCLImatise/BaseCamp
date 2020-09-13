version 1.0

task Sierrapy {
  input {
    String? url
  }
  command <<<
    sierrapy \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    url: "URL of Sierra GraphQL Web Service."
  }
  output {
    File out_stdout = stdout()
  }
}