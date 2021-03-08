version 1.0

task PpanggolinInfo {
  input {
    File? pan_genome
    Boolean? parameters
    Boolean? content
    Boolean? status
  }
  command <<<
    ppanggolin info \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if (parameters) then "--parameters" else ""} \
      ~{if (content) then "--content" else ""} \
      ~{if (status) then "--status" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    parameters: "Shows the parameters used (or computed) for each step\\nof the pangenome generation (default: False)"
    content: "Shows detailled informations about the pangenome's\\ncontent (default: False)"
    status: "Shows informations about the statuses of the different\\nelements of the pangenome (what has been computed, or\\nnot) (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}