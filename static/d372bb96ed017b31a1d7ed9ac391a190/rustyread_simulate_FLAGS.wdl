version 1.0

task RustyreadSimulateFLAGS {
  input {
    File? reference
  }
  command <<<
    rustyread simulate FLAGS \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rustyread:0.2--h82fb495_0"
  }
  parameter_meta {
    reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}