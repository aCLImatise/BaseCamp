version 1.0

task ConduitUtilsBed2gtf {
  input {
    Boolean? stranded
  }
  command <<<
    conduitUtils bed2gtf \
      ~{if (stranded) then "--stranded" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0"
  }
  parameter_meta {
    stranded: "Report gtf fields with strand information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}