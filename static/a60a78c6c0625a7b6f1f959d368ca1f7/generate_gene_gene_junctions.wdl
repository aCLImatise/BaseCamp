version 1.0

task GenerateGeneGeneJunctions.py {
  input {
    String? text_separated_file
    String? input_database
    String? input_exons
    String? fasta_file_the
    String? output_genes
    String? output_dir
    String? output_top_hat_jun_cs
    String? longest
    Boolean? reverse
    String? output_genes_count_nuc
    String? output_genes_count_seq
    String? padding
  }
  command <<<
    generate_gene-gene_junctions.py \
      ~{if defined(text_separated_file) then ("--input " +  '"' + text_separated_file + '"') else ""} \
      ~{if defined(input_database) then ("--input_database " +  '"' + input_database + '"') else ""} \
      ~{if defined(input_exons) then ("--input_exons " +  '"' + input_exons + '"') else ""} \
      ~{if defined(fasta_file_the) then ("--output " +  '"' + fasta_file_the + '"') else ""} \
      ~{if defined(output_genes) then ("--output_genes " +  '"' + output_genes + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_top_hat_jun_cs) then ("--output_tophat_juncs " +  '"' + output_top_hat_jun_cs + '"') else ""} \
      ~{if defined(longest) then ("--longest " +  '"' + longest + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(output_genes_count_nuc) then ("--output_genes_count_nuc " +  '"' + output_genes_count_nuc + '"') else ""} \
      ~{if defined(output_genes_count_seq) then ("--output_genes_count_seq " +  '"' + output_genes_count_seq + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""}
  >>>
  parameter_meta {
    text_separated_file: "The text separated file containing on each line two names of genes."
    input_database: "The FASTA file containg the sequences of all genes."
    input_exons: "Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'. This is used for filtering the UTRs extensions by removing any extension which overlaps with any exons from the database. This is optional."
    fasta_file_the: "A FASTA file containing the sequences of the two genes per line concatenated."
    output_genes: "A FASTA file containing the sequences of all genes from the input (a gene will appear only once in the output)."
    output_dir: "An output directory containing FASTA files containing the sequences of the two genes per line concatenated. One Fasta file contains one sequence."
    output_top_hat_jun_cs: "A junctions file which can be used further as input to TopHat."
    longest: "A text file where it will be written the size of the longest sequence of two genes which have been concatenated."
    reverse: "If this is True then for a given set of two genes A and B two sequences will be generated for A+B and B+A. Default is 'False'."
    output_genes_count_nuc: "If used then the number of nucleotides of all sequences from the output FASTA file (i.e. --output_genes) will be reported."
    output_genes_count_seq: "If used then the number of sequences from the output FASTA file (i.e. --output_genes) will be reported."
    padding: "If this is larger than 0 than 'N' characters will be added at the end of each sequence from the output (it might help for avoiding cross-scaffolding). Default is '0'."
  }
}