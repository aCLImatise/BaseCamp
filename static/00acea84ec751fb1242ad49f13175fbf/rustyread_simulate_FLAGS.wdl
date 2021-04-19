version 1.0

task RustyreadSimulateFLAGS {
  input {
    File? var_output
    File? reference
  }
  command <<<
    rustyread simulate FLAGS \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rustyread:0.1--h82fb495_0"
  }
  parameter_meta {
    var_output: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
    File out_var_output = "${in_var_output}"
  }
}