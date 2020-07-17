version 1.0

task AgatSqRepeatsAnalyzer.pl {
  input {
    String? string_input_gtfgff
    Boolean? genome
    String? string_output_file
  }
  command <<<
    agat_sq_repeats_analyzer.pl \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{true="--genome" false="" genome} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file(s). Several files can be processed at once: -i file1 -i file2"
    genome: "That input is design to know the genome size in order to calculate the percentage of the genome represented by each kind of repeats. You can provide an INTEGER or the genome in fasta format. If you provide the fasta, the genome size will be calculated on the fly."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
  }
}