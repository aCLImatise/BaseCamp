version 1.0

task AgatSqStatBasicpl {
  input {
    File? string_input_gtfgff
    Boolean? genome
    Boolean? inflate
    File? string_output_file
    String agat_sq_stat_basic_do_tpl
  }
  command <<<
    agat_sq_stat_basic_pl \
      ~{agat_sq_stat_basic_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (inflate) then "--inflate" else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file. Several files can be processed at\\nonce: -i file1 -i file2"
    genome: "That input is design to know the genome size in order to\\ncalculate the percentage of the genome represented by each kind\\nof feature type. You can provide an INTEGER or the genome in\\nfasta format. If you provide the fasta, the genome size will be\\ncalculated on the fly."
    inflate: "Inflate the statistics taking into account feature with\\nmulti-parents. Indeed to avoid redundant information, some gff\\nfactorize identical features. e.g: one exon used in two\\ndifferent isoform will be defined only once, and will have\\nmultiple parent. By default the script count such feature only\\nonce. Using the inflate option allows to count the feature and\\nits size as many time there are parents."
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_sq_stat_basic_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}