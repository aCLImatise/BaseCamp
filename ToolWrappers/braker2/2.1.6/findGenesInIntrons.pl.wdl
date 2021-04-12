version 1.0

task FindGenesInIntronspl {
  input {
    Boolean? in_gff
    Boolean? jg_gff
    Boolean? out_gff
  }
  command <<<
    findGenesInIntrons_pl \
      ~{if (in_gff) then "--in_gff" else ""} \
      ~{if (jg_gff) then "--jg_gff" else ""} \
      ~{if (out_gff) then "--out_gff" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    in_gff: "[name] name of file with gtf format gene predictions"
    jg_gff: "[name] name of file with corresponding joingenes predictions"
    out_gff: "[name] output (gtf format)"
  }
  output {
    File out_stdout = stdout()
  }
}