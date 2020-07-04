version 1.0

task AgatSqStatBasic.pl {
  input {
    String? string_input_gtfgff
    Boolean? genome
    Boolean? inflate
    String? string_output_file
  }
  command <<<
    agat_sq_stat_basic.pl \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{true="--genome" false="" genome} \
      ~{true="--inflate" false="" inflate} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file. Several files can be processed at once: -i file1 -i file2"
    genome: "That input is design to know the genome size in order to calculate the percentage of the genome represented by each kind of feature type. You can provide an INTEGER or the genome in fasta format. If you provide the fasta, the genome size will be calculated on the fly."
    inflate: "Inflate the statistics taking into account feature with multi-parents. Indeed to avoid redundant information, some gff factorize identical features. e.g: one exon used in two different isoform will be defined only once, and will have multiple parent. By default the script count such feature only once. Using the inflate option allows to count the feature and its size as many time there are parents."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
  }
}