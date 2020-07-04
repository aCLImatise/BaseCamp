version 1.0

task GenblastA {
  input {
    Boolean? search_program_used
    Boolean? list_query_sequences
    Boolean? target_database_genomic
    Boolean? query_sequences_protein
    Boolean? pg
    Boolean? parameter_blast_evalue
    Boolean? parameter_blast_perform
    Boolean? parameter_filtering_tf
    Boolean? parameter_genblast_optional
    Boolean? parameter_genblast_maximum
    Boolean? parameter_positive_optional
    Boolean? parameter_genblast_minimum
    Boolean? parameter_number_optional
    Boolean? output_filename_optional
  }
  command <<<
    genblastA \
      ~{true="-P" false="" search_program_used} \
      ~{true="-q" false="" list_query_sequences} \
      ~{true="-t" false="" target_database_genomic} \
      ~{true="-p" false="" query_sequences_protein} \
      ~{true="-pg" false="" pg} \
      ~{true="-e" false="" parameter_blast_evalue} \
      ~{true="-g" false="" parameter_blast_perform} \
      ~{true="-f" false="" parameter_filtering_tf} \
      ~{true="-a" false="" parameter_genblast_optional} \
      ~{true="-d" false="" parameter_genblast_maximum} \
      ~{true="-r" false="" parameter_positive_optional} \
      ~{true="-c" false="" parameter_genblast_minimum} \
      ~{true="-s" false="" parameter_number_optional} \
      ~{true="-o" false="" output_filename_optional}
  >>>
  parameter_meta {
    search_program_used: "Search program used to produce blast-format sequence alignments, can be either \"blast\" or \"wublast\", default is \"blast\", optional"
    list_query_sequences: "List of query sequences to blast, must be in fasta format, required"
    target_database_genomic: "The target database of genomic sequences in fasta format, required"
    query_sequences_protein: "Whether query sequences are protein sequences (T/F) [default: T], optional"
    pg: "Specify which blast/wublast program to run. If not specified, the default behaviour is to run tblastn (for blast/wublast protein sequence) / blastn (for blast nucleotide sequence) or tblastx (for wublast nucleotide sequence)."
    parameter_blast_evalue: "parameter for blast: The e-value, [default: 1e-2], optional"
    parameter_blast_perform: "parameter for blast: Perform gapped alignment (T/F)  [default: T], optional"
    parameter_filtering_tf: "parameter for blast: Perform filtering (T/F) [default: F], optional"
    parameter_genblast_optional: "parameter for genBlast: weight of penalty for skipping HSPs, between 0 and 1 [default: 0.5], optional"
    parameter_genblast_maximum: "parameter for genBlast: maximum allowed distance between HSPs  within the same gene, a non-negative integer [default: 100000], optional"
    parameter_positive_optional: "parameter for genBlast: number of ranks in the output, a positive integer, optional"
    parameter_genblast_minimum: "parameter for genBlast: minimum percentage of query gene  coverage in the output, between 0 and 1 (e.g. for 50% gene coverage, use \"0.5\"), optional"
    parameter_number_optional: "parameter for genBlast: minimum score of the HSP group in  the output, a real number, optional"
    output_filename_optional: "output filename, optional. If not specified, the output will be the same as the query filename with \".gblast\" extension."
  }
}