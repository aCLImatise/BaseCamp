version 1.0

task Rsemrefseqextractprimaryassembly {
  command <<<
    rsem_refseq_extract_primary_assembly
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}