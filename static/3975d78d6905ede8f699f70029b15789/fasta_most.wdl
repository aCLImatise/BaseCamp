version 1.0

task Fastamost {
  input {
    Boolean? min
    Boolean? max
  }
  command <<<
    fasta_most \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min: "<length>  minimum length to accept"
    max: "<length>  maximum length to accept"
  }
  output {
    File out_stdout = stdout()
  }
}