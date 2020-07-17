version 1.0

task EnlargeGenes.py {
  input {
    Int? enlargement_size
    String? genes
    String? full_cover
    String? gene_short
    String? output_directory_written
  }
  command <<<
    enlarge_genes.py \
      ~{if defined(enlargement_size) then ("--enlargement-size " +  '"' + enlargement_size + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(full_cover) then ("--full-cover " +  '"' + full_cover + '"') else ""} \
      ~{if defined(gene_short) then ("--gene-short " +  '"' + gene_short + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    enlargement_size: "The size of the region, which will be used for enlarging the genes at 5'end and 3'end. One region will be added to the 5' end and a second one to the 3' end. Default is '5000'."
    genes: "If this is specified then only the genes from this list will be enlarged/covered. If this is not specified then all the genes will be enlarged (only where is possible, for example the genes which overlaps each other will be skipped from enlarging). If the file is empty then no gene will be enlarged!"
    full_cover: "Genes having their lengths strictly less than this will have the enlargment done as one continuous region. For the rest of genes two regions will be added at the 5'end and 3'end of the gene. Default is '1000'."
    gene_short: "Genes having their lengths strictly less than this will be skipped from the enlargement. Default is '200'."
    output_directory_written: "The output directory where the genes sequences are written. Default is 'none'."
  }
}