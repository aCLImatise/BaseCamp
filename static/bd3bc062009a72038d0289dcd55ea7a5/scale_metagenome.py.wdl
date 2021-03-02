version 1.0

task ScaleMetagenomepy {
  input {
    Boolean? verbose
    File? input_seq_depth_file
    String? input_count_table
    File? output_meta_genome_table
  }
  command <<<
    scale_metagenome_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_seq_depth_file) then ("--input_seq_depth_file " +  '"' + input_seq_depth_file + '"') else ""} \
      ~{if defined(input_count_table) then ("--input_count_table " +  '"' + input_count_table + '"') else ""} \
      ~{if defined(output_meta_genome_table) then ("--output_metagenome_table " +  '"' + output_meta_genome_table + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    input_seq_depth_file: "an input tab-delimited table, with samples as the\\nfirst column and an integer sequencing depth as the\\nsecond [REQUIRED]"
    input_count_table: "the input trait counts on per otu basis in biom format\\n(can be gzipped) [REQUIRED]"
    output_meta_genome_table: "the output file for the scaled metagenome [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_meta_genome_table = "${in_output_meta_genome_table}"
  }
}