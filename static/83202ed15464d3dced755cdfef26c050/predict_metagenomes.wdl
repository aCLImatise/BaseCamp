version 1.0

task PredictMetagenomes.py {
  input {
    String? input_otu_table
    String? output_meta_genome_table
  }
  command <<<
    predict_metagenomes.py \
      ~{if defined(input_otu_table) then ("--input_otu_table " +  '"' + input_otu_table + '"') else ""} \
      ~{if defined(output_meta_genome_table) then ("--output_metagenome_table " +  '"' + output_meta_genome_table + '"') else ""}
  >>>
  parameter_meta {
    input_otu_table: "the input otu table in biom format [REQUIRED]"
    output_meta_genome_table: "the output file for the predicted metagenome [REQUIRED]"
  }
}