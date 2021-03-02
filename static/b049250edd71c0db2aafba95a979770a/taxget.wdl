version 1.0

task Taxget {
  input {
    Boolean? taxons
  }
  command <<<
    taxget \
      ~{if (taxons) then "-taxons" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    taxons: ": enter taxon value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}