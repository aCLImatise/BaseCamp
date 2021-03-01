version 1.0

task RsatRetrieveseqbed {
  input {
    String retrieve_seq_bed
    String genome
  }
  command <<<
    rsat retrieve_seq_bed \
      ~{retrieve_seq_bed} \
      ~{genome}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    retrieve_seq_bed: "[1mVERSION[0m"
    genome: "[1mUSAGE[0m"
  }
  output {
    File out_stdout = stdout()
  }
}