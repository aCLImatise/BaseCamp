version 1.0

task Obgen {
  input {
    Boolean? ff
    File filename
  }
  command <<<
    obgen \
      ~{filename} \
      ~{if (ff) then "-ff" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  parameter_meta {
    ff: "select a forcefield"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}