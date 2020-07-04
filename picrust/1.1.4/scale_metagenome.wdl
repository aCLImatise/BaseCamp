version 1.0

task ScaleMetagenome.py {
  input {
    String? input_seq_depth_file
    String? input_count_table
    String? output_meta_genome_table
  }
  command <<<
    scale_metagenome.py \
      ~{if defined(input_seq_depth_file) then ("--input_seq_depth_file " +  '"' + input_seq_depth_file + '"') else ""} \
      ~{if defined(input_count_table) then ("--input_count_table " +  '"' + input_count_table + '"') else ""} \
      ~{if defined(output_meta_genome_table) then ("--output_metagenome_table " +  '"' + output_meta_genome_table + '"') else ""}
  >>>
  parameter_meta {
    input_seq_depth_file: "an input tab-delimited table, with samples as the first column and an integer sequencing depth as the second [REQUIRED]"
    input_count_table: "the input trait counts on per otu basis in biom format (can be gzipped) [REQUIRED]"
    output_meta_genome_table: "the output file for the scaled metagenome [REQUIRED]"
  }
}