version 1.0

task AgatSqRepeatsAnalyzerpl {
  input {
    File? string_input_gtfgff
    Boolean? genome
    File? string_output_file
    String agat_sq_repeats_analyzer_do_tpl
  }
  command <<<
    agat_sq_repeats_analyzer_pl \
      ~{agat_sq_repeats_analyzer_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file(s). Several files can be processed at\\nonce: -i file1 -i file2"
    genome: "That input is design to know the genome size in order to\\ncalculate the percentage of the genome represented by each kind\\nof repeats. You can provide an INTEGER or the genome in fasta\\nformat. If you provide the fasta, the genome size will be\\ncalculated on the fly."
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_sq_repeats_analyzer_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}