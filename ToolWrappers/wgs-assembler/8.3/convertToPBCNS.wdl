version 1.0

task ConvertToPBCNS {
  input {
    Boolean? coverage
    Boolean? threads
    Boolean? path
    Boolean? prefix
    Boolean? length
  }
  command <<<
    convertToPBCNS \
      ~{if (coverage) then "-coverage" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (path) then "-path" else ""} \
      ~{if (prefix) then "-prefix" else ""} \
      ~{if (length) then "-length" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coverage: "Minimum coverage in a consensus region to keep, default 0."
    threads: "Number of threads to use for generating consensus, default 1."
    path: "Path to smrtportal installation. Required if smrtportal is not in path."
    prefix: "Prefix for temporary files created by this job"
    length: "Minimum sequence length to keep"
  }
  output {
    File out_stdout = stdout()
  }
}