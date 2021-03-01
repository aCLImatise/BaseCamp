version 1.0

task PhyluceAssemblyMatchContigsToBarcodes {
  command <<<
    phyluce_assembly_match_contigs_to_barcodes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}