version 1.0

task ConduitUtilsFilterFASTA {
  input {
    Boolean? minimum_number_support
  }
  command <<<
    conduitUtils filterFASTA \
      ~{if (minimum_number_support) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0"
  }
  parameter_meta {
    minimum_number_support: "(5)\\nMinimum number of reads that must support an isoform for it to be reported in the filtered FASTA\\n"
  }
  output {
    File out_stdout = stdout()
  }
}