version 1.0

task EbisearchGetDomains {
  input {
    File? file
  }
  command <<<
    ebisearch get_domains \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "File to export the domain information (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}