version 1.0

task Taxgetspecies {
  input {
    Boolean? taxons
  }
  command <<<
    taxgetspecies \
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