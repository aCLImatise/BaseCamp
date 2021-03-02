version 1.0

task NovoutilGenejunctions {
  input {
    Boolean? max_read_default
    String ref_gene_file
  }
  command <<<
    novoutil genejunctions \
      ~{ref_gene_file} \
      ~{if (max_read_default) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_read_default: "max read length. Default 100.  This sets the size of junction\\nrecords in trems of bp from each exon.\\n"
    ref_gene_file: "is a refgene format file of genes and exon annotations for the genome."
  }
  output {
    File out_stdout = stdout()
  }
}