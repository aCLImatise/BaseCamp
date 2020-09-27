version 1.0

task Correctpy {
  input {
    String families
    String reads
    String sam
  }
  command <<<
    correct_py \
      ~{families} \
      ~{reads} \
      ~{sam}
  >>>
  parameter_meta {
    families: "The sorted output of make-barcodes.awk. The important\\npart is that it's a tab-delimited file with at least 2\\ncolumns: the barcode sequence and order, and it must\\nbe sorted in the same order as the \\\"reads\\\" in the SAM\\nfile."
    reads: "The fasta/q file given to the aligner. Used to get\\nbarcode sequences from read names."
    sam: "Barcode alignment, in SAM format. Omit to read from\\nstdin. The read names must be integers, representing\\nthe (1-based) order they appear in the families file."
  }
  output {
    File out_stdout = stdout()
  }
}